terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "5.62.0"
        }

    }
    backend "s3" {
        bucket = "omar-terraform-bucket"
        key = "terraform.tfstate"
        region = "eu-west-2"

      
    }
}

provider "aws" {
    #configuration options
}