/*
locals {
  map_example = {
    key1 = "value1"
    key2 = "value2"
  }
}

output "json_encoded_value" {
  value = jsonencode(local.map_example)
}
*/
/*
output "json_decoded_value" {
  value = jsondecode(local.encoded_value)
}*//*


output "yaml_decoded_value" {
  value = yamldecode("key1: value1\nkey2: value2\n")
}



#################

locals {
  allowed_ports = [80, 443, 8080]
}

output "ports_as_json" {
  value = jsonencode(local.allowed_ports)
}
*/
