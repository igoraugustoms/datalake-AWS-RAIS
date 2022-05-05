# Backend configuration require a AWS storage bucket.
terraform {
  backend "s3" {
    bucket = "terraform-state-igor"
    key    = "state/mod1/desafio/terraform.tfstate"
    region = "sa-east-1"
  }
}
