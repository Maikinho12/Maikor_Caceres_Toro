# Define las rutas
$desktopPath = [Environment]::GetFolderPath("Desktop")
$sourcePath = $desktopPath
$logsPath = Join-Path $desktopPath "logs"
$baksPath = Join-Path $desktopPath "baks"

# Crea las carpetas si no existen
if (-Not (Test-Path -Path $logsPath)) {
    New-Item -ItemType Directory -Path $logsPath
}

if (-Not (Test-Path -Path $baksPath)) {
    New-Item -ItemType Directory -Path $baksPath
}

# Mueve los archivos
Move-Item -Path (Join-Path $sourcePath "maikor_caceres.logs") -Destination $logsPath
Move-Item -Path (Join-Path $sourcePath "maikor_caceres.baks") -Destination $baksPath

Write-Host "Archivos movidos correctamente."
