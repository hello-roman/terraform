output "fleet_ip" {
  value = hcloud_server.fleet.ipv4_address
}

output "db_endpoint" {
  value = aws_db_instance.fleet_db.endpoint
}
