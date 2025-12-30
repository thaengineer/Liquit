try {
    Get-InstalledModule -Name "ps2exe" -ErrorAction Stop | Out-Null
} catch {
    Install-Module -Name "ps2exe" -Scope CurrentUser -Force
} finally {
    Import-Module -Name "ps2exe"
}


Invoke-ps2exe -inputFile '.\LiquitCollectionMemberMgmt.ps1' -outputFile '.\LiquitCollectionMemberMgmt.exe' -x64 -noConsole -title 'Liquit Collection Member Mgmt' -company 'CompanyName' -product 'Liquit Collection Member Mgmt' -copyright 'MIT License' -version '1.0' -noConfigFile -noVisualStyles
.\make-msi.ps1
