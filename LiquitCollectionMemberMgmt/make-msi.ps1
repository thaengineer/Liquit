try {
    Get-InstalledModule -Name "PSMSI" -ErrorAction Stop | Out-Null
} catch {
    Install-Module -Name "PSMSI" -Scope CurrentUser -Force
} finally {
    Import-Module -Name "PSMSI"
}


$UpgradeCode = (New-Guid).Guid.ToUpper()

New-Installer -ProductName "Liquit Collection Member Mgmt" -UpgradeCode $UpgradeCode -Manufacturer 'CompanyName' -Content {
    New-InstallerDirectory -PredefinedDirectoryName 'ProgramFilesFolder' -Content {
        New-InstallerDirectory -DirectoryName "Liquit Collection Member Mgmt" -Id 'InstallDir' -Content {
            New-InstallerFile -Source '.\Layout.xaml'
            New-InstallerFile -Source '.\LiquitCollectionMemberMgmt.exe' -Id "Main"
        }
    }
    New-InstallerDirectory -PredefinedDirectory 'DesktopFolder' -Content {
        New-InstallerShortcut -Name "Liquit Collection Member Mgmt" -FileId "Main" -WorkingDirectoryId 'InstallDir' -IconPath '.\icon.ico'
    }
} -OutputDirectory "$($PSScriptRoot)\"
