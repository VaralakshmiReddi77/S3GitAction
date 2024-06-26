# main.tf
resource "aws_s3_bucket" "my_bucket1" {
  bucket  = "my-unique-bucket-name1"
  tags    = {
  Name           = "MyS3Bucket1"
  }
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}
