resource "aws_route_table" "private-ng" {
    vpc_id = "${aws_vpc.this.id}"

    route {
        cidr_block = "0.0.0.0/24"
        nat_gateway_id = aws_nat_gateway.nat.id
    }

    tags = {
      using_case = "natgateway"
      Name = "${local.prefix}-routable-private"
      Environment = local.env
      Path = "${basename(abspath(path.module))}routable-ng.tf"
    }
}

resource "aws_route_table_association" "rtp1" {

    subnet_id = aws_subnet.private-subnet.id
    route_table_id = aws_route_table.private-ng.id
  
}