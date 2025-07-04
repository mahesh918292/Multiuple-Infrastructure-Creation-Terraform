resource "aws_s3_object" "index" {
 count         = length(var.bucket_names)
  bucket        = aws_s3_bucket.sample_terraform_bucket[count.index].id
    key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
 count         = length(var.bucket_names)
  bucket        = aws_s3_bucket.sample_terraform_bucket[count.index].id
    key          = "error.html"
  source       = "error.html"
  content_type = "text/html"
}
