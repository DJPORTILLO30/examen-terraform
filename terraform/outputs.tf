output "vpc_id" {
  value = aws_vpc.this.id
}

output "ig_id" {
  value = aws_internet_gateway.this.id
}

output "subnet_public_id" {
  value = aws_subnet.public-subnet.id
}

output "private_public_id" {
  value = aws_subnet.private-subnet.id
}

output "ng_id" {
  value = aws_nat_gateway.nat.id
}

output "routebale-public" {
  value = aws_route_table_association.rt1.id
}

output "routeable-private" {
  value = aws_route_table_association.rtp1.id
}