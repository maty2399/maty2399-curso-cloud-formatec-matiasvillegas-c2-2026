resource "aws_s3_bucket" "app" {
  bucket = var.app_bucket_name

  tags = {
    Name      = var.app_bucket_name
    Course    = "formatec"
    ManagedBy = "terraform"
    Backend   = "s3-remote"
  }
}