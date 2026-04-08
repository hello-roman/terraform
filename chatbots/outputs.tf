output "app_url" {
  value = "http://${hcloud_server.chatfaq_app.ipv4_address}"
}

output "db_endpoint" {
  value = aws_db_instance.chatfaq_db.endpoint
}
