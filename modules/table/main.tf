# main.tf for Table Module

# Define Snowflake table resource
provider "snowflake" {
  account  = var.snowflake_account
  username = var.snowflake_username
  password = var.snowflake_password
}
resource "snowflake_table" "table1" {
  name       = var.table_name
  schema     = var.schema_name
  database   = var.database_name

  column {
    name = "col1"
    type = "VARCHAR"
  }

  column {
    name = "col2"
    type = "INTEGER"
  }
   column {
    name = "col3"
    type = "VARCHAR"
  }

  column {
    name = "col4"
    type = "INTEGER"
  }

  # Add more columns as needed
}
terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 0.73.0"
    }
  }
}



