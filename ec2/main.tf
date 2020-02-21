terraform {
    required_version = ">= 0.12.0"

    backend "s3" {
        bucket = "ec2-remote-state"
        key    = "ec2.tfstate"
        region = "us-east-1"
  }   
    
}

provider "aws" {
    region = "${var.aws_region}"
    
}

resource "aws_instance" "ec2" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.aws_key}"
    count = 2

}



