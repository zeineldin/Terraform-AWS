provider "aws" {
  #access_key = "ACCESS_KEY_HERE"
  #secret_key = "SECRET_KEY_HERE"
  shared_credentials_file = "~/.aws/credentials"
  region     = "eu-west-1"
}

resource "aws_instance" "devopsarea" {
  ami           = "ami-08935252a36e25f85"
  instance_type = "t2.micro"

tags = {
    "Name" = "devopsarea-instance"
  }
}
