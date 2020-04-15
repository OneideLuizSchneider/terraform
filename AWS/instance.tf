 # Configure the AWS Provider
provider "aws" {
  region  = "sa-east-1"
  shared_credentials_file = "/Users/oneide/.aws/credentials"
  profile = "default"
}
resource "aws_instance" "ec2" {
  count = "${var.instance_count}"
  ami = "${var.aim_image}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  key_name = "terraform-provisioning"
  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}
resource "aws_eip" "eip" {
  count = length(aws_instance.ec2)
  instance = "${aws_instance.ec2[count.index].id}"
}