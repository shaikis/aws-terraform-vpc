provider "aws"{

}

resource "aws_vpc" "eht" {
    cidr_block = var.main_cidr
    instance_tenancy = "default"
    tags={
        Name = "eht"
    }
}
