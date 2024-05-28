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
