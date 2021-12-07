resource "aws_internet_gateway" "eht_igw" {
    vpc_id = aws_vpc.eht.id

  tags = {
    Name        = "${var.vpc_name} Internet Gateway"
    environment = var.vpc_environment_tag
    product     = var.vpc_product_tag
    contact     = var.vpc_contact_tag
    provisioner = "terraform"
  }

}