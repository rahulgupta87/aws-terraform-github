provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "aws-terraform-github-s3-state"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "aws-terraform-github-ddb-lock-table"
  }
}

module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = "ami-0b947c5d5516fa06e"
  instance_type = "t2.micro"
  key_name      = "aws-terraform-github-kp"
  vpc_id        = "vpc-0a9b510042c036707"
  subnet_id     = "subnet-009b58c08d3a731c8"
  instance_name = "aws-terraform-github-ec2"
}