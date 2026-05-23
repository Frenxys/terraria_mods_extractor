$workshopRoot = "C:\Program Files (x86)\Steam\steamapps\workshop\content\1281930"
$destDir = Join-Path $HOME "Desktop\extractedmods"
if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir | Out-Null }

Get-ChildItem -Path $workshopRoot -Directory | ForEach-Object {
    $modFolder = $_.FullName
    $versionDirs = Get-ChildItem -Path $modFolder -Directory
    if ($versionDirs) {
        Write-Host "Mod: $($_.Name) - Found versions: $($versionDirs.Name -join ', ')"
        $latestVersion = $versionDirs | Sort-Object Name -Descending | Select-Object -First 1
        Write-Host "  -> Latest version (by name): $($latestVersion.Name)"
        $tmodFiles = Get-ChildItem -Path $latestVersion.FullName -Filter *.tmod -File
        foreach ($file in $tmodFiles) {
            Copy-Item -Path $file.FullName -Destination $destDir -Force
        }
    }
}
Write-Host "Copy completed."
