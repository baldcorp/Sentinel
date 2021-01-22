
# install Az senitnel PS module
Install-Module -Name Az.SecurityInsights
#connect to Senitnel tenant

Login-AzAccount


#define variable 
$outputFolder = "c:\export\"
$ResourceGroup = "cxe-yanivsh01"
$WorkspaceName = "senitnel-main01-yanivsh"

 

#get alerts 
$alerts = Get-AzSentinelAlertRule -ResourceGroupName $ResourceGroup -WorkspaceName $WorkspaceName

 


#output alerts to folder 
foreach ($alert in $alerts)
{
If($alert.enabled -eq $True -and $alert.name -ne "FusionBuiltIn" -and $alert.severity -ne "null")
{
  
    $outputFileName = $alert.DisplayName +".json"
    $exportlocation = $outputFolder + "\" + $outputFileName
    $alert | ConvertTo-Json | Out-File $exportlocation  
}
}
