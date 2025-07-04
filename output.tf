output "bucket_names_created" {
  value = [for b in aws_s3_bucket.sample_terraform_bucket : b.bucket]
}
