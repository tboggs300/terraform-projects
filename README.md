# terraform-projects
This repository is a place to show examples of HashiCorp's Terraform in use.
To use Terraform in your project, check out [their site](https://www.terraform.io/)

# Deploying Infrastructure

### `terraform init`
This will initialize Terraform in the working directory by downloading the required providers and any specified modules. 

### `terraform plan`
This is used to draft up a list of changes to be made based on the existing `.tfstate` file. 

### `terraform apply`
This will re-run `terraform plan` and prepare for deploying of you infrastrucure. After this 
command completes, you will be asked if you wish to proceed with deployment. This can be automated 
by appending `--auto-approve` as a command line argument.

# Testing

### `terraform fmt`
Running `terraform fmt` will automatically format your Terraform code to match that of the standard set
by HashiCorp. By appending `--check`, the command will return a pass or fail depending on if your code
meets the standard.

### `terraform validate`

### Terratest

# Modules
For best practices, Terraform projects should be broken down into smaller modules that are then used
in services.

## AWS

### Compute

### Database

### Networking

### Storage