Write-Host "Que veut tu faire pour lanceur d'applation " -ForegroundColor Cyan
Write-Host "1. sw (StartupMenu de windows)[-v (voir le contenu)]" -ForegroundColor yellow
Write-Host "2. <appPreset>" -ForegroundColor yellow
$isApp = Read-Host

if($isApp -eq "sw"){

    Write-Host "Le nom de l'application" -ForegroundColor Cyan
    $nameApp = Read-Host
    
    Write-Host "Lancement de l'application" -ForegroundColor Green
    start "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\$nameApp.lnk"
}elseif($isApp -eq "sw -v"){

    Write-Host "Lancement de l'explorateur" -ForegroundColor Green
    start "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\"

}else{

    Write-Host "Lancement du preset" -ForegroundColor Green
    powershell.exe ".\launch\app\$isApp.ps1"

}