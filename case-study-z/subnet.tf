
resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.devops.id}"
  cidr_block = "10.0.10.0/25"

  tags {
    Name = "Data-modeling"
  }
}
