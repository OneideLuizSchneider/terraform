
module "k8s_master" {
  source = "../"
  vpc_security_group_ids = "sg-01ff5da5284e09e60"
  instance_type = "t2.micro"
  instance_name = "NewMaster"
  instance_count = "1"
}