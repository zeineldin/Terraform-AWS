resource "aws_vpc" "dm" {
  cidr_block       = "10.0.10.0/24"

  tags {
    Name = "Data-modeling"
  }
 enable_dns_hostnames = true
}
