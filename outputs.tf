output "vpc_id" {
    value = aws_vpc.eht.id
}

output "private_subnet_id"{
    value = aws_subnet.eht_private_subnet.id
}

output "pub_subnet_id" {
    value = aws_subnet.eht_pub_subnet.id
}