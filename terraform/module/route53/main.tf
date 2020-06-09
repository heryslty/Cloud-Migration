provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_route53_zone" "route53" {
  name = "heryslty.xyz.com"
}
