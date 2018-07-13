#resource "aws_instance" "dev" {
#	ami = "${var.ami["${var.aws_region}"]}"
#	instance_type	= "${var.aws_instance_type}"
#	key_name	= "${aws_key_pair.admin_key.key_name}"
#	security_groups	= ["${aws_security_group.base_security_group.name}"]
#	associate_public_ip_address = true
#	count		= 1
#
#	tags {
#		Name = "Ubuntu launched by terraform"
#	}
#}

resource "aws_s3_bucket" "iac_book" {
	bucket = "iac-book"
	acl = "public-read"

	tags {
		Name = "IAC Book Bucket in ${var.aws_region}"
	}
}

resource "aws_s3_bucket_object" "index" { 
	bucket = "${aws_s3_bucket.iac_book.bucket}"
	key = "index.html"
	content = "<h1>Hello Infrastructure-as-Code Cookbook!</h1>"
	content_type = "text/html"
	acl = "public-read"
	#source = "index.html"
}
