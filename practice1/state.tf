terraform {
  backend "s3" {
    bucket = "terraform-rpadala"
    key    = "roboshop_dummy/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
