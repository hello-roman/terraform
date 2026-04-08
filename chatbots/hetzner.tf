resource "hcloud_server" "chatfaq_app" {
  name        = "chatfaq-app"
  image       = "ubuntu-22.04"
  server_type = "cx22"
  location    = "nbg1"

  ssh_keys = [var.ssh_key]

  user_data = templatefile("cloud-init.yaml", {
    DB_HOST         = aws_db_instance.chatfaq_db.address
    DB_USER         = var.db_user
    DB_PASSWORD     = var.db_password
    OPENAI_API_KEY  = var.openai_api_key
  })
}
