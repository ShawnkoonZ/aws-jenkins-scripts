resource "aws_security_group" "shawnkoonz_jenkins_sg" {
	name = "tf_jenkins_sg"
	description = "Allow Jenkins server SG for shawnkoonz."

	tags {
		Name = "tf_jenkins_sg"
	}

	# These could be changed to allow certain range.
	
	ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = "${var.public_cidr}"
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = "${var.public_cidr}"
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = "${var.public_cidr}"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = "${var.public_cidr}"
  }
}