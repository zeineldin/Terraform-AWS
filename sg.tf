resource "aws_security_group" "sg" {
  name        = "DevOps_sg"
  vpc_id      = "${aws_vpc.devops.id}"

 ingress {
    from_port   = 2377
    to_port     = 2377
    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
    self = true

  }

 ingress {
    from_port   = 7946
    to_port     = 7946
    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
    self = true

  }

 ingress {
    from_port   = 7946
    to_port     = 7946
    protocol    = "udp"
#    cidr_blocks = ["0.0.0.0/0"]
    self = true

  }

 ingress {
    from_port   = 4789
    to_port     = 4789
    protocol    = "udp"
#    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
