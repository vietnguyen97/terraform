# 1. Create vpc 
resource "aws_vpc" "staging-vpc" {
  cidr_block           = "10.0.0.0/24"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "staging-vpc"
  }
}

# 2. Create internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.staging-vpc.id
  tags = {
    Name = "internet-gw"
  }
}

# 3. Create subnet
resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.staging-vpc.id
  cidr_block              = "10.0.0.0/26"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-1b"
  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.staging-vpc.id
  cidr_block              = "10.0.0.64/26"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-1c"
  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id                  = aws_vpc.staging-vpc.id
  cidr_block              = "10.0.5.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-1a"
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id                  = aws_vpc.staging-vpc.id
  cidr_block              = "10.0.6.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-1b"
  tags = {
    Name = "private-subnet-2"
  }
}

# 4. Create route table
resource "aws_route_table" "route-table-1" {
  vpc_id = aws_vpc.staging-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route-1"
  }
}

resource "aws_route_table" "route-table-2" {
  vpc_id = aws_vpc.staging-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route-2"
  }
}

# 5. Associate subnet with Route Table
resource "aws_route_table_association" "pub-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.route-table-1.id
}

resource "aws_route_table_association" "pub-2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.route-table-2.id
}
