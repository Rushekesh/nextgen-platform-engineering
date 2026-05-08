provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "ai_generated_bucket" {
  bucket = "ai-generated-unsafe-bucket"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.ai_generated_bucket.id

  block_public_acls       = false  # Flagged by OPA
  block_public_policy     = false  # Flagged by OPA
  ignore_public_acls      = false
  restrict_public_buckets = false
}
