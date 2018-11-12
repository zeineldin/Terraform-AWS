# Configure the AWS Provider
provider "aws" {
  region                  = "eu-central-1"
#  access_key = "${AWS_ACCESS}"
#  secret_key = "${AWS_SECRET}"
  shared_credentials_file = "/Users/<USER_NAME>/.aws/credentials"
  profile                 = "default"

}

