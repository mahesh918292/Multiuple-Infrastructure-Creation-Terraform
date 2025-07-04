
resource "aws_s3_bucket" "sample_terraform_bucket" {
  count  = length(var.bucket_names)
  bucket = var.bucket_names[count.index]


  tags = {
    Environment = "Testing"
  }
}

resource "aws_s3_bucket_versioning" "enable_versioning" {
    count  = length(var.bucket_names)
  bucket = aws_s3_bucket.sample_terraform_bucket[count.index].id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "disable_block" {
 count  = length(var.bucket_names)
  bucket = aws_s3_bucket.sample_terraform_bucket[count.index].id 
   block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "static_hosting" {
 count  = length(var.bucket_names)
  bucket = aws_s3_bucket.sample_terraform_bucket[count.index].id
  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
