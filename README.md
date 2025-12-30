# Liquit

### Requirements

- [Application Workspace PowerShell Module](https://download.liquit.com/)
- Edit LiquitCollectionMemberMgmt.ps1 and modify the following variables so that it can make the api connection.  
`$LiquitUri   = ''`  
`$UserName    = ''`  
`$Password    = ConvertTo-SecureString -String '' -AsPlainText -Force`

### Optional

In `make.ps1` modify the `-company` parameter to set the Company for the compiled .exe and in `make-msi.ps1`  
modify the `-Manufacturer` parameter to do the same for when the .msi is built.  
