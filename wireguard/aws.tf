resource "aws_s3_bucket" "wg_backup" {
  bucket = "wireguard-backups-${random_id.bucket.hex}"
}

resource "random_id" "bucket" {
  byte_length = 4
}
