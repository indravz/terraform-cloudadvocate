resource "aws_instance" "web" {
  ami           = "ami-05803413c51f242b7"
  instance_type = "t2.micro"

  tags = {
    Name = "treasury-web-app-dev"
  }
}

