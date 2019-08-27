variable "aws_region" {
    default = "us-east-1"
    description = "Northern Virginia Region for AWS us-east-1"
}

variable "s3_bucket_name" {
    type = "string"
    description = "S3 bucket name"
    default = "rohan-bb-bucket"
}

variable "s3_bucket_region" {
    type = "string"
    description = "S3 bucket region"
    default = "us-east-1"
}

variable "tag_env" {
    type = "string"
    description = "tag for environment"
    default = "sample"
  
}
