# Container Security & Vulnerability Scanning

- Followed **Azure security recommendations**: ACR should not have unrestricted access.  
  - Solutions: put ACR in a **private network** (VNet/subnet) or restrict IPs.  

- Used **Trivy** to scan Docker image before deployment.  
  - Found 4 vulnerabilities in Debian 12.13 (3 HIGH, 1 CRITICAL).  
  - Example fix: update packages in Dockerfile:  
    ```dockerfile
    RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
        gpgv libc-bin zlib1g && rm -rf /var/lib/apt/lists/*
    ```

- Trivy can be **integrated in CI/CD pipelines** to block deployment if critical issues exist.  
- Helps enforce **secure deployment practices** at build time.
