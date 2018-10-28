resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.dm.id}"

  tags {
    Name = "Data-Modeling"
  }
}
