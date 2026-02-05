# Azure Cost Optimization

During this assessment, Looking at all the types of resources we are being charged for and if this wasn't a free tier but a actual org resources the identified areas where costs can be optimized. The main areas are:

- **Azure DevOps licenses**  
- **App Service Plans**  
- **Storage Accounts**  
- **Compute (AKS clusters)**  

---

## Azure DevOps Licenses

- Evaluate which users actually need full licenses. Stakeholders who only review or approve code don't need paid licenses.  
- Use **Basic + Test Plan** licenses only for the teams that actively develop and test.  
- If there's an **existing Visual Studio subscription**, leverage it instead of buying additional licenses.  
- Reducing unnecessary licenses can significantly lower costs.

---

## App Service Plans

- Azure charges **per App Service Plan**, not per app usage.  
- First, check if the app functionality is modular:  
  - If yes, consider moving to **Azure Functions** with a **consumption plan** to pay only for actual usage.  
  - If no, use **reserved instances** for App Service Plans to get discounted pricing.  
- Monitor usage to ensure plans are not **over-provisioned**.

---

## Storage Accounts

- Storage cost depends on the **access tier**: Hot, Cool, Cold, Archive.  
- Enable **lifecycle management** to automatically move unused blobs from Hot → Cool → Cold → Archive.  
- This ensures infrequently used data is stored more cheaply while still accessible when needed.  
- Proper tiering can save a substantial amount on storage costs.

---

## AKS (Azure Kubernetes Service)

- Select the **appropriate node tier** for your workload.  
- Use **autoscaling** based on resource requests and limits instead of over-provisioning.  
- Consider **reserved instances** to get discounts on cluster nodes.  
- Monitor **Dev and Staging environments**, which are often underutilized:  
  - Scale them down during off-hours or remove unused clusters.  
- Optimizing AKS ensures we don't pay for idle resources.

---

## Summary

By reviewing these areas, we can reduce unnecessary spending while still maintaining performance and availability:

- Limit Azure DevOps licenses to necessary users  
- Optimize App Service Plans or move to Functions/Reservations  
- Use Storage lifecycle management and proper tiering  
- Right-size AKS clusters, use autoscaling and reservations
