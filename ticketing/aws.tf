resource "aws_db_instance" "app_db" {
  identifier        = "open-project-db"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  username = var.db_user
  password = var.db_password

  skip_final_snapshot = true
  publicly_accessible = true
}

resource "aws_s3_bucket" "assets" {
  bucket = "open-project-assets-${random_id.bucket_id.hex}"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
