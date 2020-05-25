// Environment name, used as prefix to name resources.
variable "environment" {}

// The allocated storage in gigabytes.
variable "rds_allocated_storage" {
  default = "250"
}

// The instance type of the RDS instance.
variable "rds_instance_class" {
  default = "db.m4.large"
}

// Specifies if the RDS instance is multi-AZ.
variable "rds_multi_az" {
  default = "false"
}

// Username for the administrator DB user.
variable "mssql_admin_username" {}

// Password for the administrator DB user.
variable "mssql_admin_password" {}

// Determines whether a final DB snapshot is created before the DB instance is deleted.
variable "skip_final_snapshot" {
  default = "false"
}
