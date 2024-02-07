# main.tf for Schema Module

# Define Snowflake schema resource

provider "snowflake" {
  account  = var.snowflake_account
  username = var.snowflake_username
  password = var.snowflake_password
}
resource "snowflake_schema" "schema1" {
  name       = var.schema_name
  database   = var.database_name
}
terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 0.73.0"
    }
  }
}





