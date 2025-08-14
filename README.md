# Multi-cloud-Project
Multi-cloud Infra provisioning project using Terraform, deploying AWS &amp; Azure instances with CI/CD via GitHub Actions. State stored in S3 with DynamoDB locking. Integrated Gitleaks &amp; KICS for DevSecOps scanning. Includes monitoring, logging, load balancers, and S3 bucket provisioning.

This repo uses Gitleaks to detect hardcoded secrets. If your PR fails due to a leak:\n
- Check the gitleaks-report.json artifact in GitHub Actions\n
- Fix the variable or remove the sensitive value\n
- Re-run the pipeline\n
