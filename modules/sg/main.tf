resource "aws_security_group" "sagar" {
  name        = "allow-sagar"
  description = "Allow TLS inbound traffics"

  ingress {
    description = "ssh  from VPC internet "
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_sagar"
  }
}

