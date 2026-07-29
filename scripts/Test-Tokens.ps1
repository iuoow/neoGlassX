[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()
$tokens = @{}

function Add-Error([string]$message) { $errors.Add($message) }
function Has-Property($node, [string]$name) { return $null -ne $node.PSObject.Properties[$name] }

function Read-Node($node, [string[]]$path, [string]$inheritedType, [string]$sourceFile) {
  if ($node -isnot [System.Management.Automation.PSCustomObject]) { return }
  $type = if (Has-Property $node '$type') { [string]$node.'$type' } else { $inheritedType }
  if (Has-Property $node '$value') {
    $name = $path -join '.'
    if ([string]::IsNullOrWhiteSpace($type)) { Add-Error "Token has no `$type: $name ($sourceFile)" }
    $tokens[$name] = @{ Type = $type; Value = $node.'$value'; Source = $sourceFile }
  }
  foreach ($property in $node.PSObject.Properties | Where-Object { -not $_.Name.StartsWith('$') }) {
    Read-Node $property.Value ($path + $property.Name) $type $sourceFile
  }
}

$sourceFiles = foreach ($folder in @('primitive', 'semantic', 'component', 'profiles', 'themes')) {
  Get-ChildItem -LiteralPath (Join-Path $repoRoot "tokens\\$folder") -File -Filter '*.json'
}
foreach ($file in $sourceFiles) {
  try { Read-Node (Get-Content -Raw -Encoding UTF8 $file.FullName | ConvertFrom-Json) @() $null $file.FullName }
  catch { Add-Error "Invalid Token JSON: $($file.FullName)" }
}

foreach ($entry in $tokens.GetEnumerator()) {
  $name = $entry.Key; $type = $entry.Value.Type; $value = $entry.Value.Value
  if ($type -notin @('color', 'dimension', 'duration', 'cubicBezier', 'string')) { Add-Error "Unsupported Token type '$type': $name" }
  if ($value -is [string] -and $value -match '^\{(.+)\}$' -and -not $tokens.ContainsKey($Matches[1])) { Add-Error "Unknown Token reference {$($Matches[1])}: $name" }
  if ($type -eq 'color' -and $value -is [System.Management.Automation.PSCustomObject]) {
    if ($value.colorSpace -ne 'srgb' -or @($value.components).Count -ne 3) { Add-Error "Invalid sRGB color: $name" }
    foreach ($component in @($value.components)) { if ([double]$component -lt 0 -or [double]$component -gt 1) { Add-Error "Color component outside 0..1: $name" } }
  }
  if (($type -eq 'dimension' -or $type -eq 'duration') -and $value -is [System.Management.Automation.PSCustomObject] -and ($null -eq $value.value -or [string]::IsNullOrWhiteSpace([string]$value.unit))) { Add-Error "Invalid $type value: $name" }
  if ($type -eq 'cubicBezier' -and $value -isnot [string] -and @($value).Count -ne 4) { Add-Error "Cubic bezier needs four components: $name" }
}

function Resolve-Reference([string]$name, [System.Collections.Generic.HashSet[string]]$trail) {
  if (-not $tokens.ContainsKey($name)) { return }
  if (-not $trail.Add($name)) { Add-Error "Circular Token reference: $name"; return }
  $value = $tokens[$name].Value
  if ($value -is [string] -and $value -match '^\{(.+)\}$') { Resolve-Reference $Matches[1] $trail }
  [void]$trail.Remove($name)
}
foreach ($name in $tokens.Keys) { Resolve-Reference $name ([System.Collections.Generic.HashSet[string]]::new()) }

if ($errors.Count -gt 0) { $errors | Sort-Object -Unique | ForEach-Object { Write-Output "ERROR: $_" }; exit 1 }
Write-Output "Token contract checks passed for $($tokens.Count) tokens."
