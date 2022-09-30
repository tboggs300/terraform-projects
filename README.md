# terraform-projects
This repository is a place to show examples of HashiCorp's Terraform in use.

# Deploying Infrastructure

### `terraform init`
This is initialize Terraform in the console to allow you to use futher commands. 

### `terraform plan`
This is used to draft up a list of changes to be made based on the existing `.tfstate` file. 

### `terraform apply`
This will re-run `terraform plan` and prepare for deploying of you infrastrucure. After this 
command completes, you will be asked if you wish to proceed with deployment. This can be automated 
by appending `--auto-approve` as a command line argument.

# Testing

## fmt
Running `terraform fmt` will automatically format your Terraform code to match that of the standard set
by HashiCorp. By appending `--check`, the command will return a pass or fail depending on if your code
meets the standard.

## Terratest

# Modules
For best practices, Terraform projects should be broken down into smaller modules that are then used
in services.

## AWS

### Compute

### Database

### Networking

### Storage