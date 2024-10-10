terraform {
  backend "s3" {
    bucket         = "terraformtestbucket"
    key            = "terraform-aws-eks-workshop.tfstate"
    region         = "us-west-1"
    encrypt        = true
  }
}
