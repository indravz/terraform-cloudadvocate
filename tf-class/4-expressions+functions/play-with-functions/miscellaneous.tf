/*
locals {
  file_content = file("${path.module}/example.txt")
}

output "file_contents" {
  value = local.file_content
}

output "current_timestamp" {
  value = timestamp()
}

output "uuid_generated" {
  value = uuid()
}


######


locals {
  user_data_script = file("${path.module}/user_data.sh")
}

resource "aws_instance" "example_instance_4" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  user_data = local.user_data_script
}


resource "aws_instance" "example_instance_5" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = format("example-instance-%s", timestamp())
  }
}

*/
