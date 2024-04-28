resource "aws_vpc" "oregon" {
    cidr_block = "192.168.0.0/16"
    provider = aws.oregon
}

resource "aws_vpc" "virginia" {
    cidr_block = "192.168.0.0/16"
    provider = aws.virginia
}