provider "aws" {
  region     = "eu-west-2"
  access_key = "AKIAYZH5MQ2ZBIYYJWK5"
  secret_key = "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"
}

module "s3_platform_bucket" {
  source = "../../modules/s3"

  bucket_name = "platform-demo-dev-bucket"
  environment = "dev"

  tags = {
    owner       = "engineering"
    CostCentre  = "platform"
    Application = "self-service-platform"
  }
}