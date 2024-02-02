# data "aws_ami" "ami" {
#   most_recent      = true
#   name_regex       = "^ansible"
#   owners           = ["self"]
# }

resource "aws_instance" "example" {
  count          = length(var.howmanyyouwant)
  ami            = ami-0fe630eb857a6ec83                                 #Corrected reference to AMI ID
  instance_type  = "t3.micro"

  tags = {
    Name = "${var.howmanyyouwant[count.index]}"
  }
}

