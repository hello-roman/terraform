variable "aws_region" {
  default = "eu-west-1"
}

variable "hcloud_token" {}
variable "ssh_key" {}

variable "db_user" {
  default = "appuser"
}

variable "db_password" {
  sensitive = true
}
