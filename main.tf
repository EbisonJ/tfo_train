provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myec2" {
  ami = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  tags = {
    "Name" = "ebion_ec2"
  }
}
output "aws_instanceip"  {
  value = aws_instance.myec2.public_ip
}

output "aws_private_ip" {
  value = aws_instance.myec2.private_ip
}