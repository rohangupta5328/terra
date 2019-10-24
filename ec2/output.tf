
output "region" {
    value = "${var.aws_region}"
}

output "tags" {
    value = "${var.tag_env}"
}

output "ec2" {
    value = "${aws_instance.ec2}"
}