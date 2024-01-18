
```markdown
# Terraform Modules Example

This repository showcases the use of Terraform modules for managing infrastructure components. Let's dive into the details of the `./ec2` module and understand how it works.

## `./ec2` Module Overview

The `./ec2` module serves as a local module, providing a reusable structure for creating EC2 instances and associated resources. When utilizing this module, certain variables need to be passed to tailor the configuration according to specific requirements.

### How This Local Module Works

To leverage the `./ec2` module, you need to pass key variables, including:
- `tag_prefix_name`: Prefix for resource tags.
- `environment`: Environment for the resources.
- `public-key`: Public key for EC2 instance authentication.
- `user-data`: User data for EC2 instance configuration.
- `ami_id`: AMI ID for the EC2 instance.
- `instance_type`: Instance type for the EC2 instance.
- `subnet_id`: Subnet ID where the EC2 instance will reside.
- `vpc_id`: VPC ID for the EC2 instance.
- `allowed_ports`: Additional allowed ports for security group rules.

By customizing these variables, you can adapt the module for different scenarios and deployments.

### Resources Created

The `./ec2` module orchestrates the creation of various resources:
- `aws_key_pair`: Generates a key pair for SSH access.
- `aws_instance`: Deploys the EC2 instance with specified configurations.
- `aws_network_interface`: Creates a network interface associated with the EC2 instance.
- `aws_security_group`: Establishes a security group for the EC2 instance.
- `aws_security_group_rule`: Defines security group rules, including SSH access and custom additional ports.

These resources collectively contribute to setting up a EC2 instance.

### How Output Is Useful

The output of the `./ec2` module includes the `instance_id` of the created EC2 instance. This output becomes particularly useful when dealing with resource dependencies.

For example, in the `module "webapp_resources"` in `main.tf`, the `user-data` for the web application's EC2 instance references the `instance_id` of the `backend_resources` module's EC2 instance. This dependency ensures that the web application's configuration dynamically incorporates information from the backend instance, facilitating a cohesive infrastructure setup.

## Terraform Commands

Now, let's run some Terraform commands to interact with this configuration:

### Initialize Terraform

Run the following command to initialize Terraform in your project directory:
```bash
terraform init
```

### Plan Terraform Deployment

Review the changes:
```bash
terraform plan
```

### Apply Terraform Configuration

Apply the Terraform configuration to create or modify resources:
```bash
terraform apply
```

### Destroy Resources

When you're done, you can destroy the created resources using:
```bash
terraform destroy
```
```