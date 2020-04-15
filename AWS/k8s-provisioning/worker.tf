
module "k8s_worker" {
  source = "../"
  vpc_security_group_ids = "sg-01ff5da5284e09e60"
  instance_type = "t3.micro"
  instance_name = "NewWorker" 
  instance_count = "1"
}