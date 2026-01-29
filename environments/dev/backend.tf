terraform {
  backend "s3" {
    bucket = "terraform-platform-state-paul"
    key    = "dev/terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "terraform-locks"
    encrypt      = true
    # use_lockfile = true
  }
}