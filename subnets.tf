resource "aws_subnet" "eht_pub_subnet" {
    vpc_id = aws_vpc.eht.id
    cidr_block = var.pub_subnet_cidr

  tags = {
    Name        = "${var.vpc_name} private Route table"
    environment = var.vpc_environment_tag
    product     = var.vpc_product_tag
    contact     = var.vpc_contact_tag
    role        = "public_subnet"
    provisioner = "terraform"
  }

  lifecycle {
    create_before_destroy = true
  }
  
}

resource "aws_subnet" "eht_private_subnet" {
    vpc_id = aws_vpc.eht.id
    cidr_block = var.private_subnet_cidr

  tags = {
    Name        = "${var.vpc_name} private Route table"
    environment = var.vpc_environment_tag
    product     = var.vpc_product_tag
    contact     = var.vpc_contact_tag
    role        = "private_subnet"
    provisioner = "terraform"
  }

  lifecycle {
    create_before_destroy = true
  }
}