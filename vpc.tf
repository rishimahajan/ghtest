# VPC

resource "aws_vpc" "vpctest" {
  cidr_block = "172.16.0.0/16"
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.vpctest.id
  cidr_block = "172.16.0.0/24"

  tags = {
    Name = "Main"
  }
}

#resource "aws_ec2_transit_gateway" "example" {
#  description = "example"
#  amazon_side_asn = ""
#  auto_accept_shared_attachments = ""
#  default_route_table_association = ""
#  dns_support = ""
#}