# resource "aws_security_group" "sagar" {
#   name        = "allow-sagar"
#   description = "Allow TLS inbound traffics"

#   ingress {
#     description = "ssh  from VPC internet "
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "allow_sagar"
#   }
# }


data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "^ami-terraform"
  owners           = ["self"]
}


resource "aws_instance" "ami" {
  count = 2
  ami             = data.aws_ami.ami.id # Replace with your desired AMI ID"
  instance_type   = "t2.micro"
#   key_name        = "your-key-pair-name"     # Replace with your key pair name
  vpc_security_group_ids =  [var.sgid]

  tags = {
    Name = "example-instance"
  }
}

variable "sgid" {}
