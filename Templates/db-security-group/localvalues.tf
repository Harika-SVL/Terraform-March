locals {
  vpc_id     = aws_vpc.ntier.id
  anywhere   = "0.0.0.0/0"
  mysql_port = 3306
  tcp        = "tcp"
}