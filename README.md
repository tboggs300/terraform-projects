# terraform-projects
This repository is a place to show examples of HashiCorp's Terraform in use as well as help others learn.
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

# Recommended Resources

### Book Format
- [Terraform Up & Running: Writing Infrastructure as Code by Yevgeniy Brikman](https://www.terraformupandrunning.com/)
- [Infrastructure as Code by Kief Morris](https://www.oreilly.com/library/view/infrastructure-as-code/9781098114664/)

### Video Format
- [Complete Terraform Course - From BEGINNER to PRO! (Learn Infrastructure as Code)](https://www.youtube.com/watch?v=7xngnjfIlK4)
- [This is GitOps](https://www.youtube.com/channel/UCLuouYY-axwxqD8CeCkEt_w/featured) YouTube channel 

### Documentation
- [Intro to Terraform](https://www.terraform.io/intro)
- Terraform's [Providers](https://registry.terraform.io/browse/providers) and [Modules](https://registry.terraform.io/browse/modules) Registry

### Other Repositories