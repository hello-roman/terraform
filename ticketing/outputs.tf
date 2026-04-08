output "app_ip" {
  value = hcloud_server.app.ipv4_address
}

output "db_endpoint" {
  value = aws_db_instance.app_db.endpoint
}

output "s3_bucket" {
  value = aws_s3_bucket.assets.bucket
}
