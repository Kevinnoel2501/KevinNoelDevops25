# Retrieving Secrets from Key Vault

- Set up an **Azure Key Vault** and added a secret.  
- Granted the **pipeline's service principal** the **Key Vault Secrets User** role.  
- Pulled the secret (`StorageAccountConstr`) in the pipeline using **Azure CLI**.  
- Set it as an **environment variable** in the App Service for use during deployment.
