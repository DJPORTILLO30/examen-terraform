resource "aws_vpc" "this" {
    
    cidr_block = local.vpc.cidr
    instance_tenancy = "default"

    tags = {
        Name = "${local.prefix}-vpc"
        Environment = local.env
        Path = "${basename(abspath(path.module))}/vpc.tf"
    }

}