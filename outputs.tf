output "vpc_id" {
    value = aws_vpc.main.id
}

output "private_subnet_id"{
    value = aws_subnet.eht_private_subnet.id
}

output "pub_subnet_id" {
    value = aws_subnet.eht_pub_subnet.id
}

output "private_cidr" {
    value = "10.0.16.0/20"
}
