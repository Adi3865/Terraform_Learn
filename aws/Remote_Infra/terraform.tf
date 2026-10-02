terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }

# backend "s3" {
#   bucket         = "terraform-remote-infra-277707143657"
#   key            = "terraform.tfstate"
#   region         = "us-east-2"
#   dynamodb_table = "Terraform-DynamoDB-remote-infra"
# }


backend "s3" {
  bucket       = "terraform-remote-infra-277707143657"
  key          = "terraform.tfstate"
  region       = "us-east-2"
  use_lockfile = true
}

}