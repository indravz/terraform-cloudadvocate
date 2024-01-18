1. tf init
2. tf plan
3. tf apply
4. tf show
5. tf state list
6.  terraform state mv  -state-out=../../5-state-management/simple-webapp-again/terraform.tfstate aws_instance.web aws_instance.web
7. tf state list
8. tf state show aws_instance.web_1
8. cd ../../5-state-management 
9. tf state list
10.  terraform import aws_instance.web_2 i-0d4c6fc7df54f10b2 ( impoprt manually using cli after adding config)
11. terraform state rm aws_instance.web_2
10. terraform plan -generate-config-out=generate-import.tf ( terraform will add the config)
11. 