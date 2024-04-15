resource "aws_instance" "new_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_id
}

output "instance_id" {
  value = aws_instance.new_instance.id
}
