resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key-terraform"
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "terraform-name" {
  ami                       = var.AMIS[var.REGION]
  instance_type             = "t2.micro"
  subnet_id                 = aws_subnet.public-subnet-1.id
  availability_zone         = var.REGION_SUB
  key_name                  = "deployer-key-terraform"
  vpc_security_group_ids    = ["sg-02d80deb4c72bb144"]   
  tags = {
    Name = "staging-pj"
    Project = "staging"
  }
}
