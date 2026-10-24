# Starts the local PostgreSQL database server
$pgBin = "$env:LOCALAPPDATA\Programs\pgsql\bin"
$pgData = "$env:LOCALAPPDATA\Programs\pgsql\data"
$pgLog = "$env:LOCALAPPDATA\Programs\pgsql\logfile.log"

if (-not (Test-Path "$pgBin\pg_ctl.exe")) {
    Write-Error "PostgreSQL binary not found at $pgBin"
    exit 1
}

Write-Host "Starting local PostgreSQL server..." -ForegroundColor Cyan
& "$pgBin\pg_ctl.exe" -D $pgData -l $pgLog start
Write-Host "PostgreSQL is running on localhost:5432." -ForegroundColor Green
