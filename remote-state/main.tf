
provider "aws" {

  region  = "us-east-1"


}


resource "aws_instance" "example_server" {

  ami           = "ami-0fe630eb857a6ec83"

  instance_type = "t2.micro"



  tags = {

    Name = "JacksBlogExample"

  }

}