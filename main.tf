terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_db_instance" "foste_db" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "foste_db.mysql8.0"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.main_db.name
}

resource "aws_db_subnet_group" "main_db" {
  name       = "private_db"
  subnet_ids = [aws_subnet.private_db.id]
}

resource "aws_instance" "foste_ec2" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public_ec2.id

  tags = {
    Name = "FosteEC2"
  }
}
