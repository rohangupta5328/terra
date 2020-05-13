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
    default = "t2.large"
}

variable "aws_key" {}
variable "access_key" {}
variable "secret_key" {}
