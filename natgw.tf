resource "aws_nat_gateway" "eht_nat_gw" {
    allocation_id = aws_eip.ehteip.id
    subnet_id = aws_subnet.eht_pub_subnet.id
  
}