resource "aws_internet_gateway" "this" {
    vpc_id = "${aws_vpc.this.id}" 

     depends_on = [
        aws_vpc.this
    ]
}

