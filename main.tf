resource "aws_s3_bucket" "example" {
  bucket = "example"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_policy     = false // This is default, so you can probably remove this line
  restrict_public_buckets = false // same as above
  block_public_acls       = true 
  ignore_public_acls      = true 
}

