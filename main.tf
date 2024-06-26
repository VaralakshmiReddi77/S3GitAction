# main.tf
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-example-bucket"
    tags = {
      Name        = "MyS3Bucket"
      Environment = "Production"
    }
}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}
resource "aws_s3_bucket" "log_bucket" {
  bucket = "my-tf-log-bucket"
    tags = {
      Name        = "MyLogBucket"
      Environment = "Production"
    }
}
resource "aws_s3_bucket_acl" "log_bucket_acl" {
  bucket = aws_s3_bucket.log_bucket.id
  acl    = "log-delivery-write"
}
resource "aws_s3_bucket_logging" "example" {
  bucket        = aws_s3_bucket.example.id
  target_bucket = aws_s3_bucket.log_bucket.id
  target_prefix = "log/"
}
resource "aws_quicksight_dashboard" "example" {
  dashboard_id        = "example-id"
  name                = "example-name"
  version_description = "version"
  source_entity {
    source_template {
      arn = aws_quicksight_template.source.arn
      data_set_references {
        data_set_arn         = aws_quicksight_data_set.dataset.arn
        data_set_placeholder = "1"
      }
    }
  }
}
