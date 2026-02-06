# Dependency Vulnerability Scan (Dependabot)

- Used **Dependabot** to identify vulnerabilities in **NuGet packages**.  
- Enabled Dependabot in **GitHub** and configured it using `.github/dependabot.yml`.  
- Set up a **weekly scan** schedule.  
- Configured Dependabot to raise up to **10 pull requests** targeting the **develop** branch.  
- Vulnerabilities are reported as **security alerts** and also as **automated PRs** for fixes.
