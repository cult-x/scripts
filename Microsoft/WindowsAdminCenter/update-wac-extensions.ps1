<#

Inspired by https://docs.microsoft.com/en-us/windows-server/manage/windows-admin-center/configure/using-extensions

#>


# Load PowerShell Modules for Windows Admin Center
Import-Module "$env:ProgramFiles\windows admin center\PowerShell\Modules\ExtensionTools"

# specify WAC server URL
$server = 'https://localhost'

# get all installed extensions
$extensions = Get-Extension $server | Where-Object -Property status -eq -Value 'Installed'

# loop through installed extensions and update if available
foreach ($ext in $extensions) {
    Update-Extension $server $ext.id
}
