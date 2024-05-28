variable "db_username" {
  description = "The username for the RDS instance"
  type        = string
}

variable "db_password" {
  description = "The password for the RDS instance"
  type        = string
  sensitive   = true
}

variable "ec2_key_name" {
  description = "The key name for EC2 instance"
  type        = string
}

variable "aws_vpc_cidr" {
  description = "Vpc cidr block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "aws_vpc_private_db_subnets" {
  description = "Subnets for private vpc"
  type        = string
}

variable "aws_vpc_public_ec2_subnets" {
  description = "Subnets for public vpc"
  type        = string
}

