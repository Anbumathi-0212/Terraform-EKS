terraform {
  backend "s3" {
    bucket         = "terraformtestbucket"
    key            = "terraform-aws-eks.tfstate"
    region         = "us-west-1"
    encrypt        = true
  }
}
