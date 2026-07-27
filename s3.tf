resource "aws_s3_bucket" "insecure" {
  bucket = "my-insecure-test-bucket-123456789"
}

resource "aws_s3_bucket_public_access_block" "insecure" {
  bucket = aws_s3_bucket.insecure.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "public" {
  bucket = aws_s3_bucket.insecure.id
  acl    = "public-read"
}
