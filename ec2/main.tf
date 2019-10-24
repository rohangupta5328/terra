provider "aws" {
    # access_key = "${var.access_key}"
    # secret_key = "${var.secret_key}"
    region = "${var.aws_region}"
    
}

terraform {
    backend "s3" {
    bucket = "rohan-tf-remote-state"
    key = "terraform.tfstate"
    region = "us-east-1"
    }
}

resource "aws_s3_bucket" "rohan-bb-terra" {
    bucket = "${var.s3_bucket_name}"
    acl = "private"
    region = "${var.aws_region}"

    versioning {
        enabled = true 
    }

    tags = {
        Name = "${var.s3_bucket_name}"
        Environment = "${var.tag_env}"
    }
}

resource "aws_instance" "ec2" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.aws_key}"
    count = 3
    associate_public_ip_address = "true"

    tags = {
        Name = "${var.name}"
        environment = "dev"
        example = "terraform"
        deployment = "war"
        user = "rohan"
        department = "blackbelt"
    }


}



