module "s3_bucket" {
  source      = "./modules/S3"
  bucket = var.bucket
}
