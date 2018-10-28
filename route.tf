resource "aws_route_table" "rt" {
 vpc_id = "${aws_vpc.dm.id}"

 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = "${aws_internet_gateway.gw.id}"
 }

 tags {
   Name = "Data-Modeling"
 }
}

resource "aws_route_table_association" "asc" {
 subnet_id      = "${aws_subnet.main.id}"
 route_table_id = "${aws_route_table.rt.id}"
}
