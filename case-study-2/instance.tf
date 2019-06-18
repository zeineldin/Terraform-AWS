resource "aws_key_pair" "devops_key" {
  key_name = "mykey"
  public_key = "${file("${var.PATH_TO_PUBLIC_SSH_KEY}")}"
}

resource "aws_instance" "example" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.devops_key.key_name}"

  provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh"
    ]
  }
  connection {
    user = "${var.EC2_INSTANCE_USERNAME}"
    private_key = "${file("${var.PATH_TO_PRIVATE_SSH_KEY}")}"
  }
}
