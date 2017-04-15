resource "aws_instance" "shawnkoonz_jenkins_server" {
	ami = "${var.ami}"
	instance_type = "${var.instance_type}"
	key_name = "${var.key_name}"
	vpc_security_group_ids = ["${aws_security_group.shawnkoonz_jenkins_sg.id}"]

	tags {
		Name = "tf_ec2_jenkins_server"
	}
}