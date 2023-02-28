provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "terraform-name" {
  ami                       = "ami-04e6897ac54e2870f"
  instance_type             = "t2.micro"
  availability_zone         = "ap-southeast-1"
  key_name                  = "deployer-key-terraform"
  vpc_security_group_ids    = ["sg-02d80deb4c72bb144"]   
  tags = {
    "Name" = "staging-pj"
  }
}