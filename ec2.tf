resource "aws_instance" "demoec2" {
  ami = "ami-0233c2d874b811deb"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.demosubnet.id
  vpc_security_group_ids = [ aws_security_group.demosg.id ]
  key_name = "nagesh"
  count = 2
  user_data = <<EOF
        #!/bin/bash
        sudo yum update -y
        sudo yum install httpd -y 
        sudo systemctl start httpd
        sudo systemctl enable httpd
        sudo echo this is new message from $(hostname)>/var/www/html/index.html
  EOF
  tags = {
    "Name" = "Demo EC2 ${count.index+1}"
  }
}