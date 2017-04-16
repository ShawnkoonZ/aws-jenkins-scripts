resource "aws_instance" "shawnkoonz_jenkins_server" {
	ami = "${var.ami}"
	instance_type = "${var.instance_type}"
	key_name = "${var.key_name}"
	vpc_security_group_ids = ["${aws_security_group.shawnkoonz_jenkins_sg.id}"]

	user_data = <<-EOF
							#!/bin/bash
							sudo yum update -y
							sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
							sudo rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
							sudo yum install jenkins -y
							sudo service jenkins start
							EOF
							
	tags {
		Name = "tf_jenkins_server_ec2"
	}
}