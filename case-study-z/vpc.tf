resource "aws_vpc" "devops" {
  cidr_block       = "10.0.10.0/24"

  tags {
    Name = "DevOps_vpc"
  }
 enable_dns_hostnames = true
}
