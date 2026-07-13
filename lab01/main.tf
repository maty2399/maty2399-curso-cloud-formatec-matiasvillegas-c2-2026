resource "aws_s3_bucket" "lab" {
  bucket = "s3-bucket-101374115496-mv"

  tags = {
    Name        = "Mi primer bucket de S3"
    Environment = "Laboratorio"
    Owner       = "Matias Villegas"
  }
}