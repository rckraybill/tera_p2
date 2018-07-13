output "login" {
	value = "ssh ubuntu@${aws_instance.dev.public_ip} -i ${var.aws_ssh_admin_key_file}"
}

output "security_groups" {
	value = "${formatlist("%v", aws_instance.dev.security_groups)}"
}

output "instance_information" {
  value = "${formatlist("instance: %v public: %v private: %v", aws_instance.dev.*.id, aws_instance.dev.*.public_ip, aws_instance.dev.*.private_ip)}"
}

output "S3" {
  value = "http://s3-${aws_s3_bucket.iac_book.region}.amazonaws.com/${aws_s3_bucket.iac_book.id}/${aws_s3_bucket_object.index.key}"
}
