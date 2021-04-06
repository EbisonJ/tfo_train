
resource "aws_instance" "myec2" {
  ami = var.amiid
  instance_type = "t2.micro"
  count = var.inst_count
  tags = {
    "Name" = var.tag[count.index]
  }
}
output "aws_instanceip"  {
  value = aws_instance.myec2[*].public_ip
}

output "aws_private_ip" {
  value = aws_instance.myec2[*].private_ip
}