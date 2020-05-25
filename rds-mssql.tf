resource "aws_db_instance" "default_mssql" {
  identifier                = "${var.environment}-mssql"
  allocated_storage         = 50
  license_model             = "license-included"
  storage_type              = "gp2"
  engine                    = "sqlserver-se"
  engine_version            = "12.00.4422.0.v1"
  instance_class            = "${var.rds_instance_class}"
  multi_az                  = "${var.rds_multi_az}"
  username                  = "${var.mssql_admin_username}"
  password                  = "${var.mssql_admin_password}"
  backup_retention_period   = 3
  skip_final_snapshot       = "${var.skip_final_snapshot}"
  final_snapshot_identifier = "${var.environment}-mssql-final-snapshot"
}

// Identifier of the mssql DB instance.
output "mssql_id" {
  value = "${aws_db_instance.default_mssql.id}"
}

// Address of the mssql DB instance.
output "mssql_address" {
  value = "${aws_db_instance.default_mssql.address}"
}
