resource "aws_nat_gateway" "eht_nat_gw" {
    allocation_id = aws_eip.ehteip.id
    subnet_id = aws_subnet.eht_pub_subnet.id

  tags = {
    Name        = "${var.vpc_name} Nat Gateway"
    environment = var.vpc_environment_tag
    product     = var.vpc_product_tag
    contact     = var.vpc_contact_tag
    provisioner = "terraform"
  }
  
}