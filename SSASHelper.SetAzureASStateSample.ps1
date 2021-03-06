# Clear the screen
cls

# On error stop the script
$ErrorActionPreference = "Stop"

# Get the current folder of the running script
$currentPath = (Split-Path $MyInvocation.MyCommand.Definition -Parent)

# Import helper modules
Import-Module "$currentPath\Modules\SSASHelper" -Force

Set-AzureASState `
    -resourceGroupName "YourResourceGroup" `
    -serverName "YourServerName" `
    -ApplicationID "4bc85a94-12b8-4e3b-8134-d469ff592e20" `
    -ApplicationKey "4UGGHsaoyY72ixQ5q1yNkMBgc2akQSMR3rbVzk+A3tE=" `
    -tennantid "09e251dc-5e87-48bf-b4d2-71b01adb984a" `
    -SubscriptionId "e583134e-e908-4acd-b268-bb8c398a8116" `
    -action "suspend"