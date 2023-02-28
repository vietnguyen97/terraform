variable "REGION" {
  default = "ap-southeast-1"
}

variable "REGION_SUB" {
  default = "ap-southeast-1a"
}

variable "AMI" {
  type = map
  default = {
    ap-southeast-1 = "ami-0f2eac25772cd4e36"
  }
}