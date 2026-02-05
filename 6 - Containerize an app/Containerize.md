# Containerizing an Application

- Wrote a simple **two-stage Dockerfile**  
- Created an **Azure Container Registry (ACR)** to store images.  
  - Ensured service principal/account has **ACRPush** permissions.  
- Wrote a **PowerShell script** to:  
  - Connect to ACR using `az acr`  
  - Push the built image with **two tags**:  
    - **Timestamped tag** for tracking versions  
    - `:latest` tag as the primary image
