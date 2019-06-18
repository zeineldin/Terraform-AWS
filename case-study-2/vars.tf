variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-1"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "PATH_TO_PRIVATE_SSH_KEY" {
  default = "devops_key"
}
variable "PATH_TO_PUBLIC_SSH_KEY" {
  default = "devops_key.pub"
}
variable "EC2_INSTANCE_USERNAME" {
  default = "ubuntu"
}
