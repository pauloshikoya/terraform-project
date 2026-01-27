# Define what users are allowed to change
variable "bucket_name" {
    description = "Name of the S3 bucket"
    type = string
}

variable "environment" {
    description = "Deployment environment"
    type = string
    validation {
      condition = contains(["dev", "staging", "prod"],
      var.environment
      )
      error_message = "Environment must be dev, sstaging, or prod"
    }
}

variable "tags" {
    description = "Standard tags applied to all resources"
    type = map(string)
  
}

variable "access_key" {
  description = "access key for aws"
  type = string
  default = "AKIAYZH5MQ2ZHFRIG65L"
}

variable "secret_key" {
  description = "secret key for aws"
  type = string
  default = "MJTYuV4pjTFCJzySsF2dSfS1Jb09HHwM/GTe/XlA"
}