resource "aws_s3_bucket" "claims_bucket" {
  bucket = "claims-app-bucket-cloudadvocate"
}

resource "aws_s3_bucket_public_access_block" "claims_bucket" {
  bucket = aws_s3_bucket.claims_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "claims_bucket" {
  bucket = aws_s3_bucket.claims_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_ownership_controls" "claims_bucket" {
  bucket = aws_s3_bucket.claims_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "claims_bucket" {
  bucket = aws_s3_bucket.claims_bucket.id

  acl = "public-read"
  depends_on = [
    aws_s3_bucket_ownership_controls.claims_bucket,
    aws_s3_bucket_public_access_block.claims_bucket
  ]
}

resource "aws_s3_bucket_policy" "claims_bucket" {
  bucket = aws_s3_bucket.claims_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = [
          aws_s3_bucket.claims_bucket.arn,
          "${aws_s3_bucket.claims_bucket.arn}/*",
        ]
      },
    ]
  })

  depends_on = [
    aws_s3_bucket_public_access_block.claims_bucket
  ]
}