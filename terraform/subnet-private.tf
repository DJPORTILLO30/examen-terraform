resource "aws_subnet" "private-subnet" {
  
  vpc_id = aws_vpc.this.id
  cidr_block = local.vpc.cidr_subnet_private
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a"

  tags = {
    Name = "${local.prefix}-private-subnet"
    Environment = local.env
    Path = "${basename(abspath(path.module))}/subnet-private.tf"
  } 

  depends_on = [ 
    aws_vpc.this 
    ]
}