/*
locals {
  str1 = "Hello"
  str2 = "World"
}

output "formatted_string" {
  value = format("%s, %s!", local.str1, local.str2)
}

output "joined_string" {
  value = join(" ", [local.str1, local.str2])
}

output "lowercase_string" {
  value = lower(local.str1)
}

output "uppercase_string" {
  value = upper(local.str1)
}

output "substring" {
  value = substr(local.str1, 0, 3)
}

################ example Use case in AWS #############
locals {
  environment   = "dev"
  instance_type = "web"
}

resource "aws_instance" "example_instance_6" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  count         = 3

  tags = {
    Name = format("%s-%s-%d", local.environment, local.instance_type, count.index + 1)
  }
}
*/
