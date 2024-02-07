# main.tf for Database Module

# Define Snowflake database resource
provider "snowflake" {
  account  = var.snowflake_account
  username = var.snowflake_username
  password = var.snowflake_password
}
resource "snowflake_database" "database1" {
  name       = var.database_name
}
terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 0.73.0"
    }
  }
}


