resource "random_password" "password" {
  count            = length(var.aws_ssm_keys)
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "aws_ssm_parameter" "foste_" {
  count       = length(var.aws_ssm_keys)
  name        = format("%s", var.aws_ssm_keys[count.index])
  description = "The parameter description"
  type        = "SecureString"
  value       = sensitive(random_password.password[count.index].result)
}
