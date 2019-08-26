terraform {
    required_version = ">= 0.11.0"
}

provider "aws" {
    region = "${var.aws_region}"
}

resource "aws_instance" "ubuntu" {
    ami = "${var.aws_region}"
    instance_type = "${var.instance_type}"
    availability_zone = "${var.aws_region}"



tags {
    Name = "${var.name}"
}


}