resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = var.security_groups

  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}
