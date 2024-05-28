data "aws_ssm_parameter" "db_password" {
  name = "db_password"
}

#jel moze ovde da se pusha aws ssm put-parameter --name "db_password" --value "foste123"
#i onda ga dobavljamo preko ovog data.db_password
#znam da ima i ono za random password sto generise terraform
