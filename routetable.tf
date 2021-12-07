resource "aws_route_table" "eht_pub_route_table" {
    vpc_id = aws_vpc.eht.id
    
    route{
      cidr_block = "0.0.0.0/0"      
      gateway_id = aws_internet_gateway.eht_igw.id
      
         }
  tags = {
    Name        = "${var.vpc_name} Public Route table"
    environment = var.vpc_environment_tag
    product     = var.vpc_product_tag
    contact     = var.vpc_contact_tag
    provisioner = "terraform"
  }
}

resource "aws_route_table_association" "pub_route_table_association" {
    route_table_id = aws_route_table.eht_pub_route_table.id
    subnet_id = aws_subnet.eht_pub_subnet.id
}

resource "aws_route_table" "eht_private_route_table" {
    vpc_id = aws_vpc.eht.id
    
    route{
      cidr_block = "0.0.0.0/0"      
      gateway_id = aws_nat_gateway.eht_nat_gw.id
      
         }
  tags = {
    Name        = "${var.vpc_name} private Route table"
    environment = var.vpc_environment_tag
    product     = var.vpc_product_tag
    contact     = var.vpc_contact_tag
    provisioner = "terraform"
  }
}

resource "aws_route_table_association" "privat_route_table_association" {
    route_table_id = aws_route_table.eht_private_route_table.id
    subnet_id = aws_subnet.eht_private_subnet.id
}