data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "^ami-terraform"
  owners           = ["self"]
}

resource "aws_instance" "sarja" {
  count          = length(var.howmanyyouwant)
  ami            = data.aws_ami.ami.id                                #Corrected reference to AMI ID
  instance_type  = "t3.micro"

  tags = {
    Name = "${var.howmanyyouwant[count.index]}"
  }
}
