locals {
  prefix = "examen-terraform"
  env    = "dev"
  aws = {
    region = "us-east-1"
  }
  vpc = {
    cidr    = "172.16.0.0/16"
    cidr_subnet_public = "172.16.0.0/24"
    cidr_subnet_private = "172.16.1.0/24"
  }
}
