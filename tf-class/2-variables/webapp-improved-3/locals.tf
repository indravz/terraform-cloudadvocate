locals {
  tag_prefix_name = "initech-${var.environment}"

  instance_type = coalesce(var.instance-type, "t3.micro")

  subnet_to_provision = [ for subnet in aws_subnet.dev_subnet: subnet if aws_subnet.dev_subnet.id != "2323"]
}


