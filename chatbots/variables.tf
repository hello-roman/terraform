variable "aws_region" {
  default = "eu-west-1"
}

variable "hcloud_token" {}
variable "ssh_key" {}

variable "db_user" {
  default = "chatfaq"
}

variable "db_password" {
  sensitive = true
}

variable "openai_api_key" {
  sensitive = true
}
