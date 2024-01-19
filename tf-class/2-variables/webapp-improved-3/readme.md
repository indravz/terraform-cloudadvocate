```markdown
# Understanding Terraform Variable Types

Explore different variable types in Terraform.

## Simple Variables

### Number  
Define numeric variables for use in your Terraform configurations. Example:
```hcl
variable "example_number" {
  type    = number
  default = 42
}
```

### Bool
Use boolean variables to represent true or false values. Example:
```hcl
variable "example_bool" {
  type    = bool
  default = true
}
```

### String
String variables are versatile and commonly used for various configurations. Example:
```hcl
variable "example_string" {
  type    = string
  default = "hello"
}
```

## Collection Variables

### List
Define list variables to store ordered sequences of values. Example:
```hcl
variable "example_list" {
  type    = list(string)
  default = ["test-1", "test-2"]
}
```

### Map
Map variables allow you to create key-value pairs for configuration. Example:
```hcl
variable "example_map" {
  type    = map(string)
  default = {
    key1 = "value-1"
    key2 = "value-2"
  }
}
```

### Set
Set variables represent an unordered collection of unique values.
```hcl
variable "example_set" {
  type    = set(string)
  default = ["value1", "value2", "value3"]
}
```

## Structural Types

### Tuple
Tuples are ordered collections with a fixed number of elements. Example:
```hcl
variable "example_tuple" {
  type    = tuple(any)
  default = (1, "default_value", true, ["list", "of", "values"])
}
```

### Object
Objects enable you to structure variables as key-value pairs. Example:
```hcl
variable "example_object" {
  type = object({
    key1 = number
    key2 = string
  })
  default = {
    key1 = 1
    key2 = "string"
  }
}

### String:

#### Accessing Variables
        
```hcl
terraform init
terraform console
```

```hcl
var.aws-region
```

#### TERRAFORM CONSOLE: Default Values
Check if the `ami-id` variable has a default value.
```hcl
var.ami-id
```

#### Sensitivity
Check if the `backend_instance_config` variable is sensitive( similarly plan will not dispaly, caveat: state file stores it though, save state file securely)
```hcl
var.backend_instance_config
```

#### Accessing Variables After Loading
Access the `aws-region` variable after loading.
```hcl
var.aws-region
```

#### String Interpolation
String Interpolation
```hcl
"AWS Region: ${var.aws-region}"
"AMI ID: ${var.ami-id}"
format("AWS Region: %s", var.aws-region)
format("AMI ID: %s", var.ami-id)
```

### Boolean:

#### Conditional Expressions
Use a conditional expression to check if the backend instance should be created.
```hcl
var.create_backend_instance ? "Create backend instance" : "Do not create backend instance"
```

### List:

#### Accessing List Elements
Access a specific element in the `backend_subnet_cidr_blocks` list.
```hcl
var.backend_subnet_cidr_blocks[0]
```

#### Iterating Over List Elements
Iterate over all elements in the `backend_subnet_cidr_blocks` list( can also add condition if required).
```hcl
[for cidr_block in var.backend_subnet_cidr_blocks : cidr_block]
[for cidr_block in var.backend_subnet_cidr_blocks : cidr_block if length(cidr_block) > 10]

```

#### Dynamic List Access
Dynamically access an element in the `backend_subnet_cidr_blocks` list using a variable.
```hcl
var.backend_subnet_cidr_blocks[var.list_index]
```

#### Slicing Lists
Get a slice of elements from the `backend_subnet_cidr_blocks` list. ( similar to python backend_subnet_cidr_blocks[1:4])
```hcl
slice(var.backend_subnet_cidr_blocks, 1, 4)  
```

#### Checking List Length
Check the length of the `backend_subnet_cidr_blocks` list.
```hcl
length(var.backend_subnet_cidr_blocks)
```

#### Joining List Elements
Join elements of the `backend_subnet_cidr_blocks` list into a single string.
```hcl
join(", ", var.backend_subnet_cidr_blocks)
```

#### String Interpolation using list elements
String Interpolation
```hcl
"Subnet CIDR Blocks: ${join(", ", var.backend_subnet_cidr_blocks)}"
```

### Map:

#### Accessing Map Values
Access a specific value in the `sns_topics` map.
```hcl
var.sns_topics["backend_notifications"]
```

#### Iterating Over Map Entries
Iterate over all entries in the `sns_topics` map and make a list
```hcl
[for key, value in var.sns_topics : "${key}: ${value}"]
```

#### Dynamic Map Access
Dynamically access a value in the `sns_topics` map using a variable.
```hcl
var.sns_topics[var.topic_key]
```

#### Checking for Key Existence
Check if a specific key exists in the `sns_topics` map.
```hcl
contains(keys(var.sns_topics), "webapp_alerts")
```

###  Object:

#### Accessing Nested Object Properties
Access nested properties within the `frontend_instance_config` object.
```hcl
var.frontend_instance_config.backend_service_name
```

#### Iterating Over Object Properties
Iterate over properties of the `frontend_instance_config` object. ( try with backendaswell)
```hcl
[for key, value in var.frontend_instance_config : "${key}: ${value}"]
[for key, value in var.frontend_instance_config : format("%s: %v", key, value)]
```

#### Dynamic Object Access
Dynamically access a property in the `frontend_instance_config` object using a variable.
```hcl
var.frontend_instance_config["backend_ip"]
```

#### Combining Object Properties
Combine multiple object properties into a single string. ( try format aswell)
```hcl
"${var.frontend_instance_config.backend_ip}:${var.frontend_instance_config.backend_port}"
```

#### Checking for Existence
Determine if a specific property exists in the object.
```hcl
contains(keys(var.frontend_instance_config), "backend_ip")
```

For more details on Terraform variable types, refer to the [official documentation](https://developer.hashicorp.com/terraform/language/expressions/types). Use `terraform console` for easy validation of variable input conditions during development.
```