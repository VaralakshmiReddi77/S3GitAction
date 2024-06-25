provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "mybucket-elabel-001" {
  bucket = "mybucket-elabel-001"

  tags = {
    Name        = "My bucket"
  }
}
