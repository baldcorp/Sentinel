Login-AzAccount
#variables
$myImportPath = "c:\import\" # Input folder
$WorkspaceName = "my-workspace"
$resourceGroupName = "myRG"
$myNewRules = Get-ChildItem $myImportPath -Filter *.json


foreach ($myNewRule in $myNewRules) {
    $myRuleObject = Get-Content -Path $myNewRule | ConvertFrom-Json
    New-AzSentinelAlertRule -ResourceGroupName $resourceGroupName -WorkspaceName $workspaceName `
        -Scheduled -DisplayName $myRuleObject.DisplayName -Description $myRuleObject.Description -Query $myRuleObject.Query `
        -QueryFrequency $myRuleObject.QueryFrequency.Ticks -QueryPeriod $myRuleObject.QueryPeriod.Ticks -Severity $myRuleObject.Severity -TriggerThreshold $myRuleObject.TriggerThreshold
}