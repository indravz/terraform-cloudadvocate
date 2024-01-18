/*
locals {
  list1 = [1, 2, 3]
  list2 = [4, 5, 6]
}

output "list_length" {
  value = length(local.list1)
}

output "element_at_index" {
  value = element(local.list1, 1)
}

output "concatenated_list" {
  value = concat(local.list1, local.list2)
}

output "flattened_list" {
  value = flatten([local.list1, local.list2])
}


############################

locals {
  web_sg_ids     = ["sg-1234", "sg-5678"]
  database_sg_id = "sg-98787"
}

resource "aws_instance" "example_instance_8" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  count         = 3

  vpc_security_group_ids = concat(local.web_sg_ids, [local.database_sg_id])
}
*/
