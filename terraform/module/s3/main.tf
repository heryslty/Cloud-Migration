provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "s3" {
  bucket = "heri-s3-kops"
  acl = "private"
  versioning {
    enabled = true
  }

  tags {
    Name = "heri-s3-kops"
  }

}