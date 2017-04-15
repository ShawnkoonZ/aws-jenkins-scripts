# Ami
variable "ami" {
	type = "string"
	default = "ami-8ca83fec"
	description = "AMI ID. default = 'Amazon Linux AMI 2017.03.0 (HVM)'"
}

# Instance type
variable "instance_type" {
	type = "string"
	default = "t2.micro"
	description = "Instance Type. default = 't2.micro'"
}

# CIDR
variable "public_cidr" {
	default = ["0.0.0.0/0"]
}

# Keys
variable "key_name" {
	type = "string"
}