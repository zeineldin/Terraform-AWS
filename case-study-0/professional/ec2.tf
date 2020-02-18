resource "aws_instance" "devopsarea" {
  ami           = "ami-08935252a36e25f85"
  instance_type = "t2.micro"

tags = {
    Name = "Terraform-seesion"
  }
}
