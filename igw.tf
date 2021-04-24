resource "aws_internet_gateway" "eht_igw" {
    vpc_id = aws_vpc.eht.id
    tags = {
      Name = "ehtigw"
    }
}