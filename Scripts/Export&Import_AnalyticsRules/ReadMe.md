# Export Azure Sentinel analytics rule between sentinel instances.


- The RBAC permission for the user that running the **export part** of the script is at least a Sentinel **reader** https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#azure-sentinel-reader
- The RBAC permission for the user that running the **import part** of the script is a Sentinel **Contributor** https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#azure-sentinel-contributor



### This script will not migrate Azure Sentinel analytics rules that is:

- Not active.
- From fusion type.
- From 1st party alert providers (ASC\AATP\MCAS\IDP\MDATP).
- When migrated a analytics rule that query missing log analytics table in the destination workspace



