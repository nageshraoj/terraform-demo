resource "aws_security_group" "demosg" {
  name = "defaultsg"
  description = "Default Security Group"
  vpc_id = aws_vpc.demovpc.id 
  ingress  {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "Allow inbound ssh"
    from_port = 22
    protocol = "tcp"
    to_port = 22
  } 

    ingress  {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "Allow inbound http"
    from_port = 80
    protocol = "tcp"
    to_port = 80
  } 

  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "Allow all outbound traffic"
    from_port = 0
    protocol = "-1"
    to_port = 0
  } 

  tags = {
    "Name" = "Default Secruity group"
  }
}