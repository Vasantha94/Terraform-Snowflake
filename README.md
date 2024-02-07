# Terraform Snowflake Automation

This repository contains Terraform scripts/modules to automate the provisioning of Snowflake resources.

## Prerequisites
- Terraform installed locally
- Snowflake account and credentials
- Access to the Snowflake Web UI or Snowflake CLI

## Getting Started
1. Clone this repository to your local machine.
2. Copy `terraform.tfvars.example` to `terraform.tfvars` and fill in the required values for Snowflake resources.
3. Run `terraform init` to initialize the Terraform environment.
4. Run `terraform plan` to review the planned changes.
5. Run `terraform apply` to apply the changes and provision Snowflake resources.

## Directory Structure
- `modules/`: Contains subdirectories for each Snowflake resource type, each with its own Terraform configuration files.
- `main.tf`: Orchestrates the provisioning of Snowflake resources using the modules.
- `variables.tf`: Defines Terraform input variables used across the project.
- `terraform.tfvars.example`: Example file containing template values for input variables.
- `README.md`: Provides documentation and instructions for using the Terraform scripts/modules.

## Additional Notes
- Ensure that Terraform is configured with the necessary credentials to authenticate with Snowflake.
- Review the Terraform documentation for more information on Snowflake provider configuration and available resources.
