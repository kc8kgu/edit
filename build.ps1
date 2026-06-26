#!/usr/bin/env pwsh
# Builds editor.exe with PyInstaller and installs it to the user's local bin directory.

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$installDir = "$env:USERPROFILE\.local\bin"

Set-Location $repoRoot
python -m PyInstaller editor.spec

if (-not (Test-Path $installDir)) {
    New-Item -ItemType Directory -Path $installDir -Force | Out-Null
}

Copy-Item -Path "$repoRoot\dist\editor.exe" -Destination "$installDir\editor.exe" -Force

Write-Host "Installed editor.exe to $installDir\editor.exe"
