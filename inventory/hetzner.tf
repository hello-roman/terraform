resource "hcloud_server" "fleet" {
  name        = "fleet-mdm"
  image       = "ubuntu-22.04"
  server_type = "cx22"
  location    = "nbg1"

  ssh_keys = [var.ssh_key]

  user_data = file("cloud-init.yaml")
}
