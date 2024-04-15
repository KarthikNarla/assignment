resource "aws_vpc" "new_account_vpc" {
  cidr_block = var.vpc_cidr_block
}

data "aws_availability_zones" "this" {
  state = "available"
}

resource "aws_subnet" "newSubnet" {
  vpc_id            = aws_vpc.new_account_vpc.id
  count             = 3
  cidr_block        = cidrsubnet(aws_vpc.new_account_vpc.cidr_block, 3, count.index)
  availability_zone = data.aws_availability_zones.this.names[count.index]
  tags = {
    "Name" = "account-${data.aws_availability_zones.this.names[count.index]}"
  }
}

output "vpc_id" {
  value = aws_vpc.new_account_vpc.id
}
