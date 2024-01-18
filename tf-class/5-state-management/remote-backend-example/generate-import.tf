/*
# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "web-2" {
  ami                                  = "ami-07b36ea9852e986ad"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-2a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  subnet_id                            = "subnet-072e217d1752a72f4"
  tags = {
    Name = "k8-worker-1"
  }
}
*/
