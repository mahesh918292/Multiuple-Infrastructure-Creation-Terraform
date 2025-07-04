## 📦 Project Overview

This repository contains Terraform code to automate the creation of multiple AWS S3 buckets.  
Before running the code, ensure that:

- Terraform is installed on your system.
- AWS credentials are configured using the AWS CLI (`aws configure`).

> ⚠️ Although you can hardcode AWS credentials directly in the provider block, it is **not recommended** due to security risks.

### 🚀 How to Use

1. Initialize the Terraform working directory:  
   `terraform init`

2. Preview the infrastructure changes:  
   `terraform plan`

3. Apply the configuration without manual approval:  
   `terraform apply -auto-approve`
