/*
locals {
  num1 = 10
  num2 = 5
}

output "addition_result" {
  value = local.num1 + local.num2
}

output "subtraction_result" {
  value = local.num1 - local.num2
}

output "multiplication_result" {
  value = local.num1 * local.num2
}

output "division_result" {
  value = local.num1 / local.num2
}

output "modulus_result" {
  value = local.num1 % local.num2
}





#############AWS Use case###########
resource "aws_instance" "example_instance_1" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  count         = 3  # Create three instances

  volume_tags = {
    Name = "example-instance-volume-${count.index + 1}"
  }

  ebs_block_device {
    volume_size = 50 + count.index * 10  # Varying size for each volume
    volume_type = "gp2"
    device_name = "example-ebs"
  }
}



*/
