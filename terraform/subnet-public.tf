resource "aws_subnet" "public-subnet" {
  
  vpc_id = aws_vpc.this.id
  cidr_block = local.vpc.cidr_subnet_public
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "${local.prefix}-public-subnet"
    Environment = local.env
    Path = "${basename(abspath(path.module))}/subnet-public.tf"
  } 

  depends_on = [ 
    aws_vpc.this 
    ]
}