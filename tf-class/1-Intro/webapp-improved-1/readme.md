```markdown
# Terraform Workflow for Infrastructure Deployment

This guide outlines the common Terraform commands to deploy infrastructure for webapp-improved-1

## Terraform Commands

1. Initialize Terraform in the project directory:
   ```bash
   tf init
   ```

2. Generate and view an execution plan:
   ```bash
   tf plan
   ```

3. Format Terraform code to ensure consistent style:
   ```bash
   terraform fmt
   ```

4. Validate Terraform configuration files:
   ```bash
   terraform validate
   ```

5. Generate and view an execution plan (again):
   ```bash
   terraform plan
   ```

6. Generate and view an execution plan with a specific variable passed via command line (e.g., for passing variable vs reading from .tfvars):
   ```bash
   terraform plan -var aws-region="us-east-2"
   ```

7. Apply the Terraform configuration to create or update resources:
   ```bash
   terraform apply
   ```

8. Generate and view an execution plan for destruction (deletion) of resources:
   ```bash
   terraform plan -destroy
   ```

9. Destroy all resources created by the Terraform configuration:
   ```bash
   terraform destroy
   ```


```