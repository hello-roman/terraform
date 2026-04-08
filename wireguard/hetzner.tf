resource "hcloud_server" "wireguard" {
  name        = "wireguard-vpn"
  image       = "ubuntu-22.04"
  server_type = "cx22"
  location    = "nbg1"

  ssh_keys = [var.ssh_key]

  user_data = templatefile("cloud-init.yaml", {
    VPN_PORT = var.vpn_port
  })
}
