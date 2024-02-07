# variables.tf for Database Module

# Input variables
variable "database_name" {
  description = "Name of the Snowflake database"
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