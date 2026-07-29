[CmdletBinding()]
param(
  [switch]$Release
)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$utf8 = [System.Text.UTF8Encoding]::new($false, $true)
$errors = [System.Collections.Generic.List[string]]::new()

function Add-Error([string]$message) {
  $errors.Add($message)
}

$required = @(
  'README.md', 'ARCHITECTURE.md', 'LICENSE-MAP.md', 'LICENSE', 'LICENSE-DOCS',
  'tokens/primitive/color.json', 'tokens/semantic/color.json',
  'tokens/component/button.json', 'tokens/profiles/agent-workbench.json',
  'tokens/themes/dark.json', 'tokens/themes/high-contrast.json',
  'tokens/build/neoglass.css', 'tokens/schema/neoglass.tokens.schema.json',
  'examples/agent-run-workspace/index.html', 'examples/accessibility/index.html',
  'website/index.html', 'scripts/Test-Accessibility.ps1',
  'scripts/Test-Tokens.ps1',
  'figma/COMMUNITY_KIT.md', 'figma/community-kit.manifest.json'
)
foreach ($relativePath in $required) {
  if (-not (Test-Path -LiteralPath (Join-Path $repoRoot $relativePath))) {
    Add-Error "Missing required path: $relativePath"
  }
}

$allFiles = Get-ChildItem -LiteralPath $repoRoot -Recurse -File | Where-Object {
  $_.FullName -notmatch '\\.git\\'
}
foreach ($file in $allFiles) {
  try {
    [void]$utf8.GetString([System.IO.File]::ReadAllBytes($file.FullName))
  } catch {
    Add-Error "Invalid UTF-8: $($file.FullName)"
  }
}

foreach ($jsonFile in $allFiles | Where-Object { $_.Extension -eq '.json' }) {
  try {
    Get-Content -Raw -Encoding UTF8 -LiteralPath $jsonFile.FullName | ConvertFrom-Json | Out-Null
  } catch {
    Add-Error "Invalid JSON: $($jsonFile.FullName)"
  }
}

& (Join-Path $repoRoot 'scripts\Build-Tokens.ps1') -Check
if ($LASTEXITCODE -ne 0) { Add-Error 'Token build output is stale or failed to validate.' }

& (Join-Path $repoRoot 'scripts\Test-Tokens.ps1')
if ($LASTEXITCODE -ne 0) { Add-Error 'Token contract checks failed.' }

& (Join-Path $repoRoot 'scripts\Test-Accessibility.ps1')
if ($LASTEXITCODE -ne 0) { Add-Error 'Accessibility structural checks failed.' }

$markdownFiles = $allFiles | Where-Object { $_.Extension -eq '.md' }
foreach ($markdownFile in $markdownFiles) {
  $text = [System.IO.File]::ReadAllText($markdownFile.FullName, [System.Text.Encoding]::UTF8)
  foreach ($match in [regex]::Matches($text, '!?\[[^\]]*\]\(([^)]+)\)')) {
    $target = $match.Groups[1].Value.Trim()
    if ($target.StartsWith('<') -and $target.EndsWith('>')) {
      $target = $target.Substring(1, $target.Length - 2)
    }
    $target = ($target -split '\s+["'']')[0]
    if ($target -match '^(https?://|mailto:|#|data:)') { continue }
    $pathPart = ($target -split '#')[0]
    if (-not $pathPart) { continue }
    $resolved = [System.IO.Path]::GetFullPath((Join-Path $markdownFile.DirectoryName ([uri]::UnescapeDataString($pathPart))))
    if (-not (Test-Path -LiteralPath $resolved)) {
      Add-Error "Broken local link in $($markdownFile.FullName): $target"
    }
  }
}

$htmlFiles = $allFiles | Where-Object { $_.Extension -eq '.html' }
foreach ($htmlFile in $htmlFiles) {
  $text = [System.IO.File]::ReadAllText($htmlFile.FullName, [System.Text.Encoding]::UTF8)
  foreach ($match in [regex]::Matches($text, '(?:href|src)="([^"]+)"')) {
    $target = $match.Groups[1].Value.Trim()
    if ($target -match '^(https?://|#|data:)') { continue }
    $pathPart = ($target -split '#')[0]
    if (-not $pathPart) { continue }
    $resolved = [System.IO.Path]::GetFullPath((Join-Path $htmlFile.DirectoryName ([uri]::UnescapeDataString($pathPart))))
    if (-not (Test-Path -LiteralPath $resolved)) {
      Add-Error "Broken local HTML asset in $($htmlFile.FullName): $target"
    }
  }
}

$generatedCss = Join-Path $repoRoot 'tokens\build\neoglass.css'
$definedVariables = [System.Collections.Generic.HashSet[string]]::new()
foreach ($match in [regex]::Matches([System.IO.File]::ReadAllText($generatedCss, [System.Text.Encoding]::UTF8), '--ng-[a-z0-9-]+\s*:')) {
  [void]$definedVariables.Add(($match.Value -replace '\s*:$', ''))
}
foreach ($cssFile in $allFiles | Where-Object { $_.Extension -eq '.css' -and $_.FullName -ne $generatedCss }) {
  $css = [System.IO.File]::ReadAllText($cssFile.FullName, [System.Text.Encoding]::UTF8)
  foreach ($match in [regex]::Matches($css, 'var\((--ng-[a-z0-9-]+)')) {
    $variable = $match.Groups[1].Value
    if (-not $definedVariables.Contains($variable)) {
      Add-Error "Undefined NeoGlass CSS variable in $($cssFile.FullName): $variable"
    }
  }
}

$forbidden = @('data-risk-mode=')
$architectureDocs = Get-ChildItem -LiteralPath (Join-Path $repoRoot 'docs\zh-CN') -File -Filter '*.md'
foreach ($needle in $forbidden) {
  $matches = Select-String -LiteralPath $architectureDocs.FullName -Pattern $needle -SimpleMatch -ErrorAction SilentlyContinue
  foreach ($match in $matches) {
    Add-Error "Deprecated architecture term '$needle' in $($match.Path):$($match.LineNumber)"
  }
}

$legacyThemeNames = @('surface-default-dark', 'surface-canvas-dark')
$tokenSourceFiles = Get-ChildItem -LiteralPath (Join-Path $repoRoot 'tokens') -Recurse -File -Filter '*.json'
foreach ($needle in $legacyThemeNames) {
  $matches = Select-String -LiteralPath $tokenSourceFiles.FullName -Pattern $needle -SimpleMatch -ErrorAction SilentlyContinue
  foreach ($match in $matches) {
    Add-Error "Deprecated theme-specific semantic name '$needle' in $($match.Path):$($match.LineNumber)"
  }
}

if ($Release) {
  $placeholderPattern = 'YOUR_ORG|YOUR_NAME|YOUR_GITHUB_HANDLE|YOUR_COPYRIGHT_HOLDER|YOUR_FAMILY_NAME|YOUR_GIVEN_NAME|your-domain\.example|YOUR_DOMAIN'
  $releaseExclusions = @('PRE_PUBLISH_CHECKLIST.md', 'OPEN_SOURCE_LAUNCH.md')
  foreach ($file in $allFiles | Where-Object { $releaseExclusions -notcontains $_.Name }) {
    if ($file.Extension -notin @('.md', '.cff', '.yml', '.yaml', '.txt', '')) { continue }
    $matches = Select-String -LiteralPath $file.FullName -Pattern $placeholderPattern -ErrorAction SilentlyContinue
    foreach ($match in $matches) {
      Add-Error "Release placeholder in $($file.FullName):$($match.LineNumber)"
    }
  }

  $manifestPath = Join-Path $repoRoot 'MANIFEST.md'
  if (-not (Test-Path -LiteralPath $manifestPath)) {
    Add-Error 'Release manifest is missing.'
  } else {
    $manifestRows = Get-Content -Encoding UTF8 -LiteralPath $manifestPath | Where-Object {
      $_ -match '^\| `(.+)` \| ([0-9]+) \| `([0-9a-f]{64})` \|$'
    }
    $manifestFiles = $allFiles | Where-Object { $_.FullName -ne $manifestPath }
    if ($manifestRows.Count -ne $manifestFiles.Count) {
      Add-Error "Manifest file count mismatch: expected $($manifestFiles.Count), found $($manifestRows.Count)."
    }
    foreach ($row in $manifestRows) {
      if ($row -notmatch '^\| `(.+)` \| ([0-9]+) \| `([0-9a-f]{64})` \|$') { continue }
      $relativePath = $Matches[1]
      $expectedSize = [int64]$Matches[2]
      $expectedHash = $Matches[3]
      $target = Join-Path $repoRoot ($relativePath.Replace('/', [System.IO.Path]::DirectorySeparatorChar))
      if (-not (Test-Path -LiteralPath $target)) {
        Add-Error "Manifest path is missing: $relativePath"
        continue
      }
      $targetFile = Get-Item -LiteralPath $target
      $actualHash = (Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash.ToLowerInvariant()
      if ($targetFile.Length -ne $expectedSize -or $actualHash -ne $expectedHash) {
        Add-Error "Manifest mismatch: $relativePath"
      }
    }
  }
}

if ($errors.Count -gt 0) {
  $errors | ForEach-Object { Write-Output "ERROR: $_" }
  exit 1
}

Write-Output "Repository validation passed. Release mode: $Release"
