provider "aws" {
    region = "${var.aws_region}"
}

terraform {
  backend "s3" {
    bucket = "ec2-remote-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
    
    
}


data "archive_file" "zip" {
  type = "zip"
  source_file = "hello_lambda.js"
  output_path = "hello_lambda.zip"
}



resource "aws_lambda_function" "lambda" {
  function_name = "${var.function_name}"

  filename = "${data.archive_file.zip.output_path}"
  source_code_hash = "${data.archive_file.zip.output_base64sha256}"

  role = "${var.role}"
  handler = "hello_lambda.handler"
  runtime = "nodejs10.x"

}
