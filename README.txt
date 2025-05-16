# Terraform + Prometheus Monitoring Setup

## Overview
This project provisions cloud infrastructure using Terraform and sets up Prometheus for monitoring system metrics like CPU, memory, and disk space. Optionally, Grafana can be used for visualizing the data.

## Setup

1. Provision Infrastructure with Terraform:

   Edit `terraform/variables.tf` for custom settings (e.g., region, instance type).
   cd terraform
   terraform init
   terraform apply

2. Run Prometheus with Docker:

Edit
cd prometheus
docker-compose up -d
Access Prometheus:
Visit http://localhost:9090 for metrics.

(Optional) Access Grafana at http://localhost:3000.

Files
terraform/: Contains the Terraform configuration files.

prometheus/: Contains Prometheus and Grafana setup files.

Clean Up
To destroy the infrastructure:

Edit
cd terraform
terraform destroy
Requirements
Terraform

Docker (for Prometheus)

AWS/GCP/Azure CLI

yaml
Copy
Edit

---

This keeps it simple and to the point while covering the essentials for running the project!



