resource "aws_instance" "My_EC2_Instance" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = "${var.aws_region}-MyInstance"
  }
}
