Write-Host "tu veut le mettre dans un terminal [shell] ou dans explorateur [ex] ? " -ForegroundColor Red
$isMethode = Read-Host "--"
if($isMethode -eq "shell") 
{ 
    $url = Read-Host "donne moi le lien du ficher (en PowerShell exemple : D:\Github\MagnifiqueProjet) "
    cd $url
}elseif ($isMethode -eq "ex"){
    $url = Read-Host "donne moi le lien du ficher (en PowerShell exemple : D:\Github\MagnifiqueProjet) "
    start $url
}else{

echo "je suis desole mais je ne comprend pas ce que tu veut faire, dans les crochet il y a ce que tu dois mettre"

}
