# Deploy-MDTI-Infra-Function
author: Yaniv Shasha


By clicking deploy above you will deploy an Azure Function App with the functions needed to run this project. This version will deploy the functions for MDTI API endpoints.

### Prerequisites


- You need to have an Azure Subscription
- Ability to create an Azure Function App. 
- A MDTI API enabled teanat - You can sign up for an MDTI Premium license trial here <a href="https://signup.microsoft.com/get-started/signup?OfferId=8851ff02-fd34-4302-aa87-01247004749d&ali=1&products=8851ff02-fd34-4302-aa87-01247004749d" target="_blank">
- You need permissions to make a new App registration. 

### Installing

* 1. Register a new application in Azure AD https://techcommunity.microsoft.com/t5/microsoft-defender-threat/what-s-new-apis-in-microsoft-graph/ba-p/3780350
  -Microsoft GRAPH  (Application permissions)
     - ThreatIntelligence.Read.All

 * 2. Collect the identity and secret for the new App created in step 1.  For production. Store the secret in Azure Key vault https://docs.microsoft.com/en-us/azure/app-service/app-service-key-vault-references
      - clientID
      - clientSecret
      - tenantId

* 3. Click on Deploy to Azure Above to start the deployment. 

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYaniv-Shasha%2FSentinel%2Fmaster%2FAzureFunction%2FMDTI_Workbook_Deployment%2Fazuredeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>
</a>

  * Fill in the values for your environment. If you have an Azure Keyvault use the string something like this instead of the actual value @Microsoft.KeyVault(SecretUri=https://Myvault.vault.azure.net/secrets/MySecretKey/bd2a5f8b0f944b528af2b66da20645d4)

* 4. **Deployment of the code to the function**
  * Download the mdtiwb.zip from this repo
  * Start to connect to Azure PowerShell Connect-AzAccout
  * Run Publish-AzWebApp -ResourceGroupName REPLACEWITHYOURRG -Name REPLACEWITHYOURAPPNAME -ArchivePath C:\YOURPATH\mdtiwb.zip  **Note:The names are case sensitive**

* 5. Configure the Azure function to allow CROS
* Follow this article to understand the implication https://learn.microsoft.com/en-us/azure/azure-functions/functions-how-to-use-azure-function-app-settings?tabs=portal#cors
* in our POC we added * to the allow url's in the CORS configuration.

* 6. Deploy the Azure Workbook by pressing the above deploy button

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYaniv-Shasha%2FSentinel%2Fmaster%2FAzureFunction%2FMDTI_Workbook_Deployment%2FMDTI_Workbook.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>

* Once the workbook deployed, open it and selected from the function dropdown the name of the azure function we created in the previous step
* press on the **add trusted Site** in the relevant spots in the workbook.
