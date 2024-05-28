output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public_ec2.id
}

output "private_subnet_id" {
  value = aws_subnet.private_db.id
}

output "ec2_instance_id" {
  value = aws_instance.foste_ec2.id
}

output "db_instance_endpoint" {
  value = aws_db_instance.foste_db.endpoint
}
