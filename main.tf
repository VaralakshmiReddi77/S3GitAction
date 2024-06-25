# main.tf
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-example-bucket"
    tags = {
      Name        = "MyS3Bucket"
    }
}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "public-read-write"
}

