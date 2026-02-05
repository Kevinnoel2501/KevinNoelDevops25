# CI/CD and Multi-Stage Deployment

## Continuous Integration (CI)

- Defined triggers on **dev**, **stg**, and **main** branches.  
- Builds the **.NET application**, runs **unit tests**, and **publishes artifacts**.  

---

## Continuous Deployment (CD)

- Created **3 environments**: dev, stg, prd.  
- For **production**, deployment requires **approval** from a person or a group.  
- CD takes the **built artifact**, deploys to **Azure App Service**, and sets the required **environment variables**.

---

## Multi-Stage Deployment

- The pipeline **triggers based on the source branch**.  
- **Build stage is common**: builds the app and publishes artifacts for all branches.  
- Deployment behavior:  
  - **Dev branch**: builds and deploys to dev.  
  - **Staging branch**: builds, deploys to stg, and runs **integration tests**.  
  - **Main branch**: builds, deploys to stg, runs integration tests, then moves to prd **after approval**, and deploys to production.  

- **Templates** are used for build and release pipelines:  
  - Enables **easy reuse** of steps across pipelines.  
  - **Variable templates** allow overrides while calling the pipeline template for flexibility.  

