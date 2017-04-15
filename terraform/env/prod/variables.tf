# Provider
variable "region" {
	type = "string"
	description = "Region to deploy jenkins instance."
}

# Key
variable "key_name" {
	type = "string"
	description = "Type name of key pair to apply. Recommanded : 'jenkins-server-key'"
}