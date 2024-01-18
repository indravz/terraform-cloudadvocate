provider "aws" {
  region = "us-east-2"
}

provider "google" {
  region = "us-central1"
}

resource "aws_instance" "web_1" {
  ami           = "ami-05803413c51f242b7"
  instance_type = "t2.micro"

  tags = {
    Name = "treasury-web-app-dev-1"
  }
}

/*resource "aws_instance" "web_2" {
  ami                                  = "ami-07b36ea9852e986ad"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-2a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  subnet_id                            = "subnet-072e217d1752a72f4"
  tags = {
    Name = "k8-worker-1"
  }
}*/


