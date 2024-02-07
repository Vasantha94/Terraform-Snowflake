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
variable "warehouse_name" {
  description = "Name of the Snowflake warehouse"
}

variable "database_name" {
  description = "Name of the Snowflake database"
}

variable "schema_name" {
  description = "Name of the Snowflake schema"
}

variable "table_name" {
  description = "Name of the Snowflake table"
}

variable "role_name" {
  description = "Name of the Snowflake role"
}
