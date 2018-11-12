resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.devops.id}"

  tags {
    Name = "DevOps-igw"
  }
}
