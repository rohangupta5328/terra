terraform {
    required_version = ">= 0.11.0"
}

provider "aws" {
    region = "${var.aws_region}"
}

resource "aws_instance" "ec2" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.aws_key}"
    count = 2



tags {
    Name = "${var.name}"
}


}



