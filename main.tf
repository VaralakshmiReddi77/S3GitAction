# main.tf
resource "aws_s3_bucket" "my_bucket2" {
  bucket  = "my-unique-bucket-name2"
  tags    = {
  Name           = "MyS3Bucket2"
  }
}
