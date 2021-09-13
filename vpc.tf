provider "aws"{
    region="eu-west-1"

}

terraform {
  backend "s3" {
    bucket = "myvpc"
    key    = "vpc/test.tfstate"
    region = "us-west-1"
  }
}

resource "aws_vpc" "eht" {
    cidr_block = var.main_cidr
    instance_tenancy = "default"
    tags={
        Name = "eht"
    }
}

