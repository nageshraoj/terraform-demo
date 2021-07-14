resource "aws_instance" "demoec2" {
  ami = data.aws_ami.ec2ami 
  instance_type = "t2.micro"
  tags = {
    "Name" = "Demo EC2"
  }
}