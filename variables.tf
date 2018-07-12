variable "aws_access_key" {
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
}

variable "aws_region" {
  default = "us-west-1"
  description = "AWS Region"
}

variable "aws_ssh_admin_key_file" {}

variable "ami" {
	default = {
		us-west-1 = "ami-4aa04129"
		us-east-1 = ""
		eu-west-1 = ""
	}
}

variable "aws_instance_type" {
	default = "t2.micro"
}


