terraform {
  backend "s3" {
    bucket = "devops-bootcamp-terraform-habib-2026"
    key    = "final-project/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
