Write-Host "Bienvenue dans le script de lancement des application, profile, file etc .." -BackgroundColor DarkGreen
Write-Host "Tu veut une application ou un profile ou un ficher ? " -ForegroundColor Cyan
Write-Host "1. app" -ForegroundColor yellow
Write-Host "2. profil" -ForegroundColor yellow
Write-Host "3. file" -ForegroundColor yellow
Do{
  $isMode = Read-Host

  if(($isMode -ne "app") -xor ($isMode -ne "file") -xor ($isMode -ne "profil")){
    Write-Host "je suis desole mais je ne comprend pas ce que tu veut faire" -ForegroundColor White -BackgroundColor Red      
    Write-Host "1. app" -ForegroundColor yellow
    Write-Host "2. profil" -ForegroundColor yellow
    Write-Host "3. file" -ForegroundColor yellow
  }

}While(($isMode -ne "app") -xor ($isMode -ne "file") -xor ($isMode -ne "profil"))

if($isMode -eq "app"){

    .\launch\app\appControlle.ps1

}elseif ($isMode -eq "profil"){

    .\launch\profil\profilControlle.ps1

}elseif ($isMode -eq "file"){

    .\launch\file\fileControlle.ps1

}