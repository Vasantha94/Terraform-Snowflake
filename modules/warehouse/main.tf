# main.tf for Warehouse Module

# Define Snowflake warehouse resource

provider "snowflake" {
  account  = var.snowflake_account
  username = var.snowflake_username
  password = var.snowflake_password
}
resource "snowflake_warehouse" "warehouse1" {
  name       = var.warehouse_name
  warehouse_size       = var.warehouse_size
  auto_suspend = var.warehouse_auto_suspend
  auto_resume  = var.warehouse_auto_resume
}
terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 0.73.0"
    }
  }
}


