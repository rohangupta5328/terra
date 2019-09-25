variable "aws_region" {
    description = "AWS region"
    default = "us-east-1"
}

variable "ami_id" {
    description = "ID of the AMI to provision. Default is AWS Base Image"
    default = "ami-00eb20669e0990cb4"
}

variable "instance_type" {
    description = "type of EC2 instance to provision."
    default = "t2.micro"
}

variable "name" {
    description = "name to pass to Name tag"
    default = "Provisioned by Terraform"
}

variable "delegate" {
    default = "delegate"
    description = "harness delegate tag"
}

variable "instance_large" {
    default = "t2.large"
    description = "provisioning a large instance"
}

variable "aws_key" {}