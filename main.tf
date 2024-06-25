required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.64.0"
    }
  }
}
resource "aws_s3_bucket" "mybucket-elabel-001" {
  bucket = "mybucket-elabel-001"

  tags = {
    Name        = "My bucket"
  }
}
