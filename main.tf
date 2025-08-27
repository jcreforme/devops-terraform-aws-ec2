resource "aws_instance" "web" {
  ami                    = "ami-005efd5afe550784a"
  instance_type          = "t2.micro"
  key_name               = "my-keypair"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "hello, world!" > index.html
              nohup python -m SimpleHTTPServer 80 &
              EOF

  tags = {
    Name = "Testing Github Actions!"
  }
}


# Security Group to allow HTTP traffic
resource "aws_security_group" "web_sg" {
  name_prefix = "web-sg-"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}