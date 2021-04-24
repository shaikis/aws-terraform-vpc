resource "aws_subnet" "eht_pub_subnet" {
    vpc_id = aws_vpc.eht.id
    cidr_block = var.pub_subnet_cidr

    tags = {
      Name = "eht_pub_subnet"
    }
  
}

resource "aws_subnet" "eht_private_subnet" {
    vpc_id = aws_vpc.eht.id
    cidr_block = var.private_subnet_cidr

    tags = {
      Name = "eht_private_subnet"
    }
}