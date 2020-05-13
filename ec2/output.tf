output "region" {
    value = "${aws_instance.jenkins-server.region}"
}

output "ami" {
    value = "${aws_instance.jenkins-server.ami}"
}
