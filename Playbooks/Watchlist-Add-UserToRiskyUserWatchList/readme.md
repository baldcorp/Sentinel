#  Watchlist-Add-UserToRiskyUserWatchList

Author: Yaniv Shasha
This playbook will add User entity to a new or exsisting watchlist.

 

## logical flow to use this playbook

	1. The analyst finished investigate an incident one of its finding is a suspicious user entity 
	2. The analyst wants to enter this entity  to a watchlist (can be from block list type or allowed list).
	3. This playbook can be run an manual trigger from the full incident blade or from the investigation graph blade 
	4. As part of the deployment you will be selected the watchlist name 
	5. If this watchlist exist the new user entity will append (update operation), if the watchlist is not exist the playbook will create it and add the new item to it.



 ![Picture0](./Graphics/run1.png)
  ![Picture0](./Graphics/run2.png)




**The playbook, available here and presented below, works as follows:**
1.	Manually trigger when we want to add user entity from a given alert
2.	Get the user entity relevant 
3.	Create an array of the user properties 
4.	Create a CSV from this array
5.  Check if the watchlist exist, if it exist use watchlist API an append the data, if not create a new watchlist and append the data. 

 ### After Deploying the logicApp you will see the above workflow.

 ![Picture1](./Graphics/HIgh1.png)
  ![Picture1](./Graphics/HIgh2.png)
  
**Deploying the solution**:



2.	In “run query and list results” (2) authenticate with user that has log analytics read permission or Azure Sentinel Reader role as a minimum requirement.
3.	In “get incident – bring fresh ETAG” (3) authenticate to AAD APP with a user that has an Azure Sentinel Reader role, or with a Managed identity with the same permission.
4.	On the close incident step (4) we will need to use a user that has an Azure Sentinel Responder role as the identity for 
5.	On “add comment to incident” (5) use a user that has an Azure Sentinel Contributor account.


<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYaniv-Shasha%2FSentinel%2Fmaster%2FPlaybooks%2FWatchlist-Add-UserToRiskyUserWatchList%2Fazuredeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>
    
</a>

<a href="https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYaniv-Shasha%2FSentinel%2Fmaster%2FPlaybooks%2FWatchlist-Add-UserToRiskyUserWatchList%2Fazuredeploy.json" target="_blank">
   <img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.png"/>
    
</a>
