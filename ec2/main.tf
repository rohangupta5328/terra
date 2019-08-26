terraform {
    required_version = ">= 0.11.0"
}

provider "aws" {
    region = "${var.aws_region}"
}

resource "aws_instance" "ubuntu" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.aws_key}"



tags {
    Name = "${var.name}"
}


}