Write-Host "Download Floorp_Browser_v1.2.4 installer. Is it OK?"
$answer = Read-Host "[Y/n]"
if ( "y" -eq $answer){
    Write-Host "Download start." -ForegroundColor Cyan
    $cli = New-Object System.Net.WebClient
    $uri = New-Object System.Uri("https://repo.ablaze.one/floorp/1.2.4/Floorp_Browser_setup.exe")
    $file = Split-Path $uri.AbsolutePath -Leaf
    $cli.DownloadFile($uri, (Join-Path "./" $file))
    Write-Host "Downloading is complete!" -ForegroundColor Cyan
    start Floorp_Browser_setup.exe
    Write-Host "Start installer!" -ForegroundColor Cyan
}else{
    Write-Host "Canceled"
}
