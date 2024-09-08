variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key pair to use for the EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the instance will be launched"
  type        = string
}

variable "subnet_id" {
  description = "The Subnet ID where the instance will be launched"
  type        = string
}

variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
}