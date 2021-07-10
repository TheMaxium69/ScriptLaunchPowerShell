Write-Host "tu veut le mettre dans un terminal ou dans explorateur ? " -ForegroundColor Cyan
Write-Host "1. shell" -ForegroundColor yellow
Write-Host "2. ex" -ForegroundColor yellow
Do{
  $isMethode = Read-Host
  
  if(($isMethode -ne "shell") -xor ($isMethode -eq "ex")){
    Write-Host "je suis desole mais je ne comprend pas ce que tu veut faire" -ForegroundColor White -BackgroundColor Red      
    Write-Host "1. shell" -ForegroundColor yellow
    Write-Host "2. ex" -ForegroundColor yellow
  }

}While(($isMethode -ne "shell") -xor ($isMethode -eq "ex"))


if($isMethode -eq "shell") 
{ 
    Write-Host "Donne moi le lien du ficher ?" -ForegroundColor Cyan
    Write-Host "Exemple : en PowerShell exemple : D:\Github\MagnifiqueProjet" -ForegroundColor Magenta
    $url = Read-Host

    Write-Host "changement dans le terminal effectuez" -ForegroundColor Green
    cd $url
}elseif ($isMethode -eq "ex"){
    Write-Host "Donne moi le lien du ficher ?" -ForegroundColor Cyan
    Write-Host "Exemple : en PowerShell exemple : D:\Github\MagnifiqueProjet" -ForegroundColor Magenta
    $url = Read-Host

    Write-Host "Lancement de l'explorateur" -ForegroundColor Green
    start $url
}
