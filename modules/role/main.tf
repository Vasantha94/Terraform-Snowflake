# main.tf for Role Module

provider "snowflake" {
  account  = var.snowflake_account
  username = var.snowflake_username
  password = var.snowflake_password
}
resource "snowflake_role" "role1" {
  name = var.role_name
}

terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 0.73.0"
    }
  }
}




