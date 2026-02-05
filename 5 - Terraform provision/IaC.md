# Terraform Provisioning (AKS)

- Created a **reusable AKS module** to standardize cluster creation.  
  - Inputs: Resource Group, ACR, AKS name.  
  - Optional overrides: node count, VM image, etc.  

- Uses **remote backend** in Azure Storage to store state.  
  - Terraform pulls Resource Group and ACR details as **data blocks** and uses them during provisioning.  

- What it provisions:  
  - **AKS cluster** with specified configuration  
  - **RBAC roles** for access control  
  - **ACRPull role** so cluster can pull images from the ACR  
  - **Azure Log Analytics workspace** for cluster logs and monitoring, connected to the AKS cluster
