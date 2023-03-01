resource "aws_instance" "terraform-name" {
  ami                    = var.AMI[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.REGION_SUB
  key_name               = "deployer-key-terraform"
  vpc_security_group_ids = ["sg-02d80deb4c72bb144"]
  tags = {
    Name    = "staging-pj"
    Project = "staging"
  }
}
