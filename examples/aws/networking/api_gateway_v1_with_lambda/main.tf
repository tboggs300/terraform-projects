terraform {
    required_providers {
        aws ={
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

module "example_get_api_gateway_with_lambda" {
  source = "../../../../modules/aws/networking/api_gateway_v1_with_lambda"

  # Generally these will stay the same
  bucket_id               = var.bucket_id
  api_gateway_id          = var.api_gateway_id
  root_resource_id        = var.root_resource_id
  api_gateway_arn         = var.api_gateway_arn
  default_lambda_role_arn = var.default_lambda_role_arn

  # Specify the api resource
  target_api_resource_id = var.target_api_resource.id

  # Must be unique across all lambdas functions on the account
  function_name = "example-get-lambda"

  function_description = "Example description"
  method_type          = "GET"
  api_key_required     = true

  path_to_lambda_folder = "${path.module}/lambdas/get-example-lambda"
  lambda_folder_name    = "get-example-lambda"

}