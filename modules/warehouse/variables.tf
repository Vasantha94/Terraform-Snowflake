# variables.tf for Warehouse Module

# Input variables
variable "warehouse_name" {
  description = "Name of the Snowflake warehouse"
}

variable "warehouse_size" {
  description = "The size of the warehouse"
  type        = string
}

variable "warehouse_auto_suspend" {
  description = "The auto-suspend time for the warehouse"
  type        = number
}

variable "warehouse_auto_resume" {
  description = "Whether the warehouse should auto-resume"
  type        = bool
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