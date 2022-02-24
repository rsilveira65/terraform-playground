resource "aws_subnet" "private_subnet_1a" {
    vpc_id = aws_vpc.cluster_vpc.id
    cidr_block = lookup(var.private_subnets_cidr_blocks, "private_subnet_1a")

    availability_zone = format("%sa", var.aws_region)

    tags = {
        Name = format("%s-private-1a", var.cluster_name)
    }
}

resource "aws_subnet" "private_subnet_1c" {
    vpc_id = aws_vpc.cluster_vpc.id
    cidr_block = lookup(var.private_subnets_cidr_blocks, "private_subnet_1c")

    availability_zone = format("%sc", var.aws_region)

    tags = {
        Name = format("%s-private-1c", var.cluster_name)
    }
}

resource "aws_route_table_association" "private1a" {
  subnet_id = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.nat.id
}

resource "aws_route_table_association" "private1c" {
  subnet_id = aws_subnet.private_subnet_1c.id
  route_table_id = aws_route_table.nat.id
}