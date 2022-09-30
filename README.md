# terraform-projects
This repository is a place to show examples of HashiCorp's Terraform in use.

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

## `terraform fmt`
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

# Handling Multiple Environments
There are two typical ways of structuring a project when using Terraform: Workspaces or File Structure.

### Workspaces
#### Pros:
- Easy to get started with using the `terraform workspace` command
- Minimizes code duplication

#### Cons:
- Prone to human error (automation can help with this)
- The differences between environments/workspaces are not obvious when first looking at the codebase.

### File Structure:
#### Pros: 
- Backend storage of tfstate files means there is improved security and less chance of human error
- The codebase fully represents the deployed state(s)

#### Cons:
- Requires multiple `terraform apply` commands to be run (can be easily accomplished with CD such as GitHub Actions)
- More duplication of code (minimized through use of modules)