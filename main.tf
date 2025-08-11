resource "aws_instance" "My_EC2_Instance" {
  ami                         = var.ami_id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.public_sg.id]

  tags = {
    Name = "${var.aws_region}-MyInstance"
  }
}

module "azure_vm" {
  source         = "./modules/azure_rm"
  vm_name        = var.vm_name
  admin_username = var.admin_username
  admin_password = var.admin_password
  location       = var.location
}

