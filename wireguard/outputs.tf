output "vpn_ip" {
  value = hcloud_server.wireguard.ipv4_address
}

output "vpn_port" {
  value = var.vpn_port
}
