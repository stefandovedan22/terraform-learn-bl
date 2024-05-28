resource "aws_vpc" "main" {
  cidr_block = var.aws_vpc_cidr
}

resource "aws_subnet" "public_ec2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.aws_vpc_public_ec2_subnets
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_db" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.aws_vpc_private_db_subnets
}

resource "aws_db_subnet_group" "main_db" {
  name       = "private_db"
  subnet_ids = [aws_subnet.private_db.id]
}
