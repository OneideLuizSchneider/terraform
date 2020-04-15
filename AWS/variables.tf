variable "instance_name" {
  description = "aws instance name"
  default = "terraform-default-name"
}
variable "aim_image" {
  description = "aws ubuntu 18.04 image"
  default = "ami-05494b93950efa2fd"
}
variable "instance_type" {
  description = "aws instance type"
  default = "t2.micro"
}
variable "instance_count" {
  description = "aws instance count"
  default = "1"
}
variable "vpc_security_group_ids" {
  description = "aws security group"
  default = "sg-01ff5da5284e09e60"
}