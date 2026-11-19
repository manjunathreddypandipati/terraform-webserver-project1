data "aws_vpc" "main" {
  id = "vpc-08712dccc114af956"
}

data "aws_subnet" "public" {
  id = "subnet-03494cac4f699b57e"
}
