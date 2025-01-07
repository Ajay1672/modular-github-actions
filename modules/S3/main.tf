resource "aws_s3_bucket" "aws_s3" {
   
   bucket = "var.bucket-${random_string.unique_suffix.result}"
   acl = "private"


   lifecycle_rule {
    enabled = true

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

  }
}

resource "random_string" "unique_suffix" {
  length  = 6
  special = false
  upper   = false
}