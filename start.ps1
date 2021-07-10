Write-Host "Bienvenue dans le script de lancement des application, profile" -BackgroundColor DarkGreen

$isMode = Read-Host "Tu veut une application [app] ou un profile [profil] ou un ficher [file] ? "
if($isMode -eq "app") 
{ 
  .\app\appControlle.ps1
}elseif ($isMode -eq "profil"){
  .\profil\profilControlle.ps1
}elseif ($isMode -eq "file"){
  .\file\fileControlle.ps1
}else{

Write-Host "je suis desole mais je ne comprend pas ce que tu veut faire, dans les crochet il y a ce que tu dois mettre"

}
