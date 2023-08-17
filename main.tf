resource "aws_vpc" "this" {
  cidr_block = var.cidr
  
  tags = {
    Name        = "${var.name}"
  }
}
