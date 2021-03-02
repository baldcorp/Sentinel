# Send-DefnderIncident2EH

This playbook will send Defender 365 and Azure defender incident into Event Hub,this playbook uses the new incident trigger and needs automation rule to trigger."


Author: Yaniv Shasha

Deploy the solution
1.	Create an Event Hub using the article "Create an event hub using Azure portal" <br>
https://docs.microsoft.com/en-us/azure/event-hubs/event-hubs-create  or use an existing Event Hub.
2.	Go to the Playbook GitHub page.<br>
3.	Press the “deploy to azure” button.
4.  Create 2 automation rules with the above conditions <br>


 ![Picture0](./Graphics/defender-rule1.PNG)
  ![Picture0](./Graphics/defender-rule2.PNG)
  ![Picture0](./Graphics/MTP-rule.PNG)


<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYaniv-Shasha%2FSentinel%2Fmaster%2FPlaybooks%2FSend-DefnderIncident2EH%2Fazuredeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>
</a>
<a href="https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYaniv-Shasha%2FSentinel%2Fmaster%2FPlaybooks%2FSend-DefnderIncident2EH%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.png"/>
</a>

