# Project 1 - Deploy a Linux EC2 Web Server Using Terraform

## Objective
Deploy a Linux EC2 web server in AWS using Terraform.

## Components
- Existing VPC (reused due to VPC quota limit)
- Existing Subnet
- Security Group
- EC2 Instance
- Apache Web Server

## Files
- provider.tf
- network.tf
- security.tf
- ec2.tf
- outputs.tf

## Deployment Commands

terraform init

terraform validate

terraform plan

terraform apply

## Verification

Access the EC2 public IP in a browser and verify the web page is displayed successfully.

## Author

Manjunath Reddy Pandipati
