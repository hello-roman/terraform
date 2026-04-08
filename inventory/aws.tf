resource "aws_db_instance" "fleet_db" {
  identifier         = "fleet-mdm-db"
  engine             = "mysql"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20

  username = var.db_username
  password = var.db_password

  skip_final_snapshot = true
  publicly_accessible = true
}
