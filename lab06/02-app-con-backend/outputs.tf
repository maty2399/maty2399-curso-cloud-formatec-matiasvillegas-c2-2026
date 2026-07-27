output "app_bucket_name" {
  description = "Nombre del bucket de aplicacion."
  value       = aws_s3_bucket.app.bucket
}