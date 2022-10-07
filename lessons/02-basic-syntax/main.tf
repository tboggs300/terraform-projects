terraform {

    backend "remote" {
      organization = "my_org"

      workspaces {
        name = "my_workspace_name"
      }
    }


    required_providers {
      aws {
        source = "hashicorp/aws"
        version = "~> 4.0"
      }
    }
}