# Managing Multiple Environments
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