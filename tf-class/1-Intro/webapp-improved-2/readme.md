```markdown
## Terraform Concepts

### Arguments vs Attributes vs Meta-arguments

Understand the distinctions between arguments, attributes, and meta-arguments in Terraform configurations to effectively define and configure resources.

### Resource Dependencies (Implicit vs Explicit)

Learn about resource dependencies and the differences between implicit and explicit dependencies in Terraform. Explicitly define dependencies for a clearer and more predictable resource deployment.

### Use of Locals

Leverage Terraform locals to create reusable expressions and simplify configuration files. Locals enhance readability and maintainability by defining values for reuse within a module or configuration.

### Use of Outputs

Utilize Terraform outputs to expose specific values or information about the deployed infrastructure. Outputs are valuable for sharing information between Terraform modules or for external consumption.

### Use of Lifecycle Meta-arguments

Explore lifecycle meta-arguments to control the behavior of Terraform resources over time. 
Fine-tune settings such as resource creation, updates, and deletions using these meta-arguments (more on it in functions section)

## Advanced Terraform Commands

1. Create a dry-run execution plan and save it to a file:
   ```bash
   terraform init
   terraform plan -out="dry-run-v1"
   ```

2. Display the details of a saved execution plan:
   ```bash
   terraform show "dry-run-v1"
   ```

3. Export the details of a saved execution plan to a JSON file:
   ```bash
   terraform show -json dry-run-v1 > dry-run-v1.json
   ```

4. Visualize Terraform configurations with an online visualizer / cli commands:
   [Terraform Visualizer](https://hieven.github.io/terraform-visual/)

5. Plan and apply changes for a specific target resource instead of all resources(e.g., aws_vpc.dev_vpc):
   ```bash
   terraform plan -target="aws_vpc.dev_vpc"
   ```

6. Apply a saved execution plan (dry-run):
   ```bash
   terraform apply "dry-run-v1"
   ```

7. Apply changes and replace a specific resource (e.g., aws_instance.webapp):
   ```bash
   terraform apply -replace="aws_instance.webapp"
   ```

   Note: Use this sparingly for troubleshooting or rare cases; prefer `replace` over `taint` and `untaint`.

8. Ypu can also set the level of parallelism for resource operations/ faster deployments if required( iam using default):
   ```bash
   terraform apply -parallelism=n
   ```

9. Display details of the current Terraform state:
   ```bash
   terraform show
   ```
10. Modify the security group port from 8080 to 8081 ( demonstrating applying resource modifications):
   ```bash
   terraform plan
   ```
   Observe the modifications in the plan ( with +/-)

11. Apply a saved execution plan (dry-run):
   ```bash
   terraform apply "dry-run-v1"
   ```
12. Destroy the resources:
   ```bash
   terraform destroy
   ```
```