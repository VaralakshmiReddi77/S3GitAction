# main.tf
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-example-bucket1"
    tags = {
      Name        = "MyS3Bucket1"
    }
}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "public-read-write"
}

