resource "aws_vpc" "this" {
  cidr_block = var.cidr
  
  tags = {
    Name        = "${var.name}"
  }
}


resource "aws_subnet" "public" {
  count = length(var.public_cidr)
  vpc_id = aws_vpc.this.id
  cidr_block = var.public_cidr[count.index]
  availability_zone = var.availability_zone[count.index]
}