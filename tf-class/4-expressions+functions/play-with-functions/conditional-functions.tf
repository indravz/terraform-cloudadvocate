/*
locals {
  nullable_value = null
  map_example = {
    key1 = "value1"
    key2 = "value2"
  }
}

output "coalesce_result" {
  value = coalesce(local.nullable_value, "default_value")
}

output "if_result" {
  value = local.nullable_value == null ? "value_if_true" : "value_if_false"
}

output "lookup_result" {
  value = lookup(local.map_example, "key3", "default_value")
}


###########

variable "optional_variable" {
  type    = string
  default = null
}

resource "aws_instance" "example_instance_2" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  user_data = coalesce(var.optional_variable, "default_user_data_script")
}

*/
