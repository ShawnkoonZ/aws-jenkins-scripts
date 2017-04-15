provider "aws" {
	region = "${var.region}"
}

module "ec2" {
	source = "../../modules/ec2"
	key_name = "${var.key_name}"
}