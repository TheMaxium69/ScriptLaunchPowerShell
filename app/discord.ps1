Write-Host "qu'elle discord veut tu lance ?" -ForegroundColor Cyan
Write-Host "0. (discord normal)[Default = champ vide]" -ForegroundColor yellow
Write-Host "1. c (Discord canary)" -ForegroundColor yellow
Write-Host "2. p (Discord Ptb)" -ForegroundColor yellow
$isApp = Read-Host

if($isApp -eq "c"){

    Write-Host "Lancement de l'application" -ForegroundColor Green
    start "C:\Users\Maxime Tournier\AppData\Local\DiscordCanary\app-1.0.37\DiscordCanary.exe"
}elseif($isApp -eq "p"){

    Write-Host "Lancement de l'application" -ForegroundColor Green
    start "C:\Users\Maxime Tournier\AppData\Local\DiscordPTB\app-1.0.1008\DiscordPTB.exe"

}else{

    Write-Host "Lancement de l'application" -ForegroundColor Green
    start 'C:\Users\Maxime Tournier\AppData\Local\Discord\app-0.0.309\Discord.exe'

}
