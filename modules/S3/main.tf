resource "aws_s3_bucket" "aws_s3" {
   
   bucket = "var.bucket-${random_string.unique_suffix.result}"
   acl = "private"
}

resource "random_string" "unique_suffix" {
  length  = 6
  special = false
  upper   = false
}