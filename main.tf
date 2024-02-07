terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 0.73.0" 
    }
  }
}

provider "snowflake" {
  account        = var.snowflake_account
  username       = var.snowflake_username
  password       = var.snowflake_password
}
module "warehouse" {
  source                    = "./modules/warehouse"
  warehouse_name            = "var.warehouse_name"
  warehouse_size            = "SMALL"  
  warehouse_auto_suspend    = 60   
  warehouse_auto_resume     = true  
  snowflake_account  = var.snowflake_account
  snowflake_username = var.snowflake_username
  snowflake_password = var.snowflake_password
}

module "database" {
  source           = "./modules/database"
  database_name    = "var.database_name"
  snowflake_account  = var.snowflake_account
  snowflake_username = var.snowflake_username
  snowflake_password = var.snowflake_password
}

module "schema" {
  source         = "./modules/schema"
  database_name  = "var.database_name"
  schema_name    = "var.schema_name"
  snowflake_account  = var.snowflake_account
  snowflake_username = var.snowflake_username
  snowflake_password = var.snowflake_password
}

module "table" {
  source         = "./modules/table"
  table_name     = "var.table_name"
  schema_name    = "var.schema_name"
  database_name  = "var.database_name"
  snowflake_account  = var.snowflake_account
  snowflake_username = var.snowflake_username
  snowflake_password = var.snowflake_password
}

module "role" {
  source           = "./modules/role"
  role_name        = "var.role_name"
  snowflake_account  = var.snowflake_account
  snowflake_username = var.snowflake_username
  snowflake_password = var.snowflake_password
}

