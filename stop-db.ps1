# Stops the local PostgreSQL database server
$pgBin = "$env:LOCALAPPDATA\Programs\pgsql\bin"
$pgData = "$env:LOCALAPPDATA\Programs\pgsql\data"

if (-not (Test-Path "$pgBin\pg_ctl.exe")) {
    Write-Error "PostgreSQL binary not found at $pgBin"
    exit 1
}

Write-Host "Stopping local PostgreSQL server..." -ForegroundColor Yellow
& "$pgBin\pg_ctl.exe" -D $pgData stop
Write-Host "PostgreSQL stopped." -ForegroundColor Green
