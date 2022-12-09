# VPC

resource "aws_vpc" "vpctest" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.vpctest.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Main"
  }
}

output "vpc_id" {
  value = aws_vpc.vpctest.id 
}
