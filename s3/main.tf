provider "aws" {

    region = "${var.aws_region}"
  
}


resource "aws_s3_bucket" "rohan-bb-bucket" {
    bucket = "${var.s3_bucket_name}"
    acl = "private"
    region = "${var.s3_bucket_region}"

    versioning {
        enabled = true 
    }

    tags = {
        Name = "${var.s3_bucket_name}"
        Environment = "${var.tag_env}"
    }
  
}
