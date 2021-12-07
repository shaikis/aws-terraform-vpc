resource "aws_vpc" "eht" {
    cidr_block = var.main_cidr
    enable_dns_hostnames = true
    
  tags= {
    Name        = var.vpc_name
    environment = var.vpc_environment_tag
    product     = var.vpc_product_tag
    contact     = var.vpc_contact_tag
    provisioner = "terraform"
  }
}

