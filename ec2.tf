resource "aws_instance" "demoec2" {
  ami = "ami-0233c2d874b811deb"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Demo EC2"
  }
}