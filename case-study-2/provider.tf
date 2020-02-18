provider "aws" {
    shared_credentials_file = "~/.aws/credentials"
     #access_key = "${var.aws_access_key}"
     #secret_key = "${var.aws_secret_key}"
    region = "${var.AWS_REGION}"
}
