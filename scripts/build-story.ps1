Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Resolve-Path "$PSScriptRoot\.."
$siteDir = Join-Path $root "site"
$vendorDir = Join-Path $siteDir "vendor"
$storyFile = Join-Path $root "main.ink"
$outJson = Join-Path $siteDir "story.json"
$inkJsSource = Join-Path $root "node_modules\inkjs\dist\ink.js"
$inkJsDest = Join-Path $vendorDir "ink.js"

if (-not (Test-Path $siteDir)) {
  New-Item -ItemType Directory -Path $siteDir | Out-Null
}
if (-not (Test-Path $vendorDir)) {
  New-Item -ItemType Directory -Path $vendorDir | Out-Null
}

$inklecateCmd = Get-Command inklecate -ErrorAction SilentlyContinue
if (-not $inklecateCmd) {
  $localWin = Join-Path $root "inklecate-bin\inklecate.exe"
  $localNix = Join-Path $root "inklecate-bin\inklecate"
  if (Test-Path $localWin) {
    $inklecateCmd = @{ Source = $localWin }
  } elseif (Test-Path $localNix) {
    $inklecateCmd = @{ Source = $localNix }
  } else {
    throw "inklecate is not installed or not on PATH."
  }
}

if (-not (Test-Path $storyFile)) {
  throw "Missing story entry file: $storyFile"
}

if (-not (Test-Path $inkJsSource)) {
  throw "Missing inkjs runtime at $inkJsSource. Did you run npm install?"
}

& $inklecateCmd.Source -o "$outJson" "$storyFile"

if ($LASTEXITCODE -ne 0) {
  throw "inklecate failed with exit code $LASTEXITCODE"
}

Copy-Item -Path $inkJsSource -Destination $inkJsDest -Force
Write-Host "Build complete: $outJson"
