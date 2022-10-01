# Terraform Basics

## What is Terraform?
From Terraform's Documentation site:
> Terraform is an infrastructure as code tool that lets you build, change, and version infrastructure safely and efficiently. This includes low-level components like compute instances, storage, and networking, as well as high-level components like DNS entries and SaaS features.

Terraform is used to help create, manage, and maintain your cloud infrastructure by using Instrastructure as Code (IaC). Terraform can also help keep track of your infrastructure, automate changes, standardize configurations, and collaborate across your team or company. Terraform supports 100+ cloud providers including AWS, Azure, and GCP. 

How does Terraform do this? Terraform uses a state file to compare, add, and destroy your infrastructure. The state file is what Terraform sees and uses to reference your existing infrastructure. When using Terraform, Terraform's workflow will communicate with different *providers* through API calls in order to get your infrastructure to match that of the state file. 

> **Note:** There can be multiple state files for one account; i.e. the state file does not need to cover your infrastructure in its entirety.

## Terminology
- *state file*: how Terraform sees your existing infrastructure. It is changed whenever `terraform apply` is ran in order to update and maintain the stored state.
- *`provider`*: a cloud provider; AWS, Azure, GCP, etc.
- *`module`*: containerized code to help minimize code duplication and allow for easier maintainability across your infrastructure
- *Infrastructure as Code*: the act of using code to manage and provision infrastructure instead of using manual processes

## Typical Workflow
- Write code and changes
- `terraform init`
- `terraform plan`
- `terraform apply`
- `terraform destroy`

## Getting Set Up with Terraform and AWS
For these lessons, we will be using AWS as the main provider. You will need to make sure that both Terraform and AWS credentials are set up on your machine (or CI/CD pipeline).

For Terraform, follow this [tutorial](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

You will also need to set up AWS credentials. This can be done through [these steps](https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/setup-credentials.html).