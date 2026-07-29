[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()

function Add-Error([string]$message) { $errors.Add($message) }

$htmlFiles = Get-ChildItem -LiteralPath (Join-Path $repoRoot 'examples') -Recurse -File -Filter '*.html'
$htmlFiles += Get-ChildItem -LiteralPath (Join-Path $repoRoot 'website') -Recurse -File -Filter '*.html'
foreach ($file in $htmlFiles) {
  $text = Get-Content -Raw -Encoding UTF8 -LiteralPath $file.FullName
  if ($text -notmatch '<html[^>]+\blang="[^"]+"') { Add-Error "Missing document language: $($file.FullName)" }
  if ($text -notmatch '<h1[\s>]') { Add-Error "Missing H1: $($file.FullName)" }
  if ($text -match '<img(?![^>]*\balt=)[^>]*>') { Add-Error "Image without alt text: $($file.FullName)" }
}

$agentPage = Join-Path $repoRoot 'examples\agent-run-workspace\index.html'
$agentHtml = Get-Content -Raw -Encoding UTF8 -LiteralPath $agentPage
foreach ($required in @('skip-link', 'role="status"', 'aria-live="polite"', '<dialog', 'aria-labelledby=')) {
  if ($agentHtml -notmatch [regex]::Escape($required)) { Add-Error "Agent reference missing accessibility baseline '$required'." }
}

$tokenCss = Get-Content -Raw -Encoding UTF8 -LiteralPath (Join-Path $repoRoot 'tokens\build\neoglass.css')
foreach ($required in @('[data-theme="high-contrast"]', '[data-motion="none"]', 'prefers-reduced-motion')) {
  if ($tokenCss -notmatch [regex]::Escape($required)) { Add-Error "Generated Token CSS missing preference support '$required'." }
}

if ($errors.Count -gt 0) { $errors | ForEach-Object { Write-Output "ERROR: $_" }; exit 1 }
Write-Output "Accessibility structural checks passed for $($htmlFiles.Count) HTML files."
