# variables.tf for Table Module

# Input variables
variable "table_name" {
  description = "The name of the table"
  type        = string
}


variable "schema_name" {
  description = "Name of the Snowflake schema"
  type        = string
}

variable "database_name" {
  description = "Name of the Snowflake database"
  type        = string
}

variable "snowflake_account" {
  description = "The Snowflake account name."
  type        = string
}

variable "snowflake_username" {
  description = "The username for accessing the Snowflake account."
  type        = string
}

variable "snowflake_password" {
  description = "The password for accessing the Snowflake account."
  type        = string
}