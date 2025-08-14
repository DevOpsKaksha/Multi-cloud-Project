# Multi-cloud-Project
Multi-cloud Infra provisioning project using Terraform, deploying AWS &amp; Azure instances with CI/CD via GitHub Actions. State stored in S3 with DynamoDB locking. Integrated Gitleaks &amp; KICS for DevSecOps scanning. Includes monitoring, logging, load balancers, and S3 bucket provisioning.

This repo uses Gitleaks to detect hardcoded secrets. If your PR fails due to a leak:
Check the gitleaks-report.json artifact in GitHub Actions
Fix the variable or remove the sensitive value
Re-run the pipeline
