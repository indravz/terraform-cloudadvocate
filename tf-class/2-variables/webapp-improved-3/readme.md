
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
```

For more details on Terraform variable types, refer to the [official documentation](https://developer.hashicorp.com/terraform/language/expressions/types). Use `terraform console` for easy validation of variable input conditions during development.

```