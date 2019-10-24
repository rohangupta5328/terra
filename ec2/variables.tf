
variable "access_key" {}
variable "secret_key" {}

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

variable "aws_key" {}

variable "s3_bucket_name" {
  type        = "string"
  description = "Name of the S3 bucket to be created used to store the remote state file"
  default     = "rohan-bb-terra"
  }

variable "tag_env" {
  type        = "string"
  description = "Tag for Environment Name"
  default     = "dev"
  }