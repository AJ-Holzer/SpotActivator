try {
    Invoke-WebRequest -useb https://raw.githubusercontent.com//spicetify//cli//main//install.ps1 | Invoke-Expression
    Invoke-WebRequest -useb https://raw.githubusercontent.com//spicetify//marketplace//main//resources//install.ps1 | Invoke-Expression
}
catch {
    Write-Host "An error occurred: $_"
    Write-Host "Press any key to continue..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}