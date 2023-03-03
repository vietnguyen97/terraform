terraform {
  backend "s3" {
    bucket = "vprofile-kops-state-kube"
    key    = "terraform/backend"
    region = "ap-southeast-1"
  }
}