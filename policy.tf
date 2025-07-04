resource "aws_s3_bucket_policy" "public_policy" {
  count  = length(var.bucket_names)

  bucket = aws_s3_bucket.sample_terraform_bucket[count.index].id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "Statement1",
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:GetObject",
        Resource  = "${aws_s3_bucket.sample_terraform_bucket[count.index].arn}/*"
      }
    ]
  })
}
