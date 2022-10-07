# Basic Terraform Syntax

### Meta Information
For all uses of Terraform, you will need to tell Terraform certain information such as the `required_providers`. The `required_providers` argument will tell Terraform which providers are used through the files and will be downloaded when running `terraform plan`.  There is also optional meta information such as `backend` depenending on if you are using Terraform Cloud, S3, or some other state file hosting. You can see this done in the `main.tf` file in this directory.

### Resource and Data Blocks
```
type "<PROVIDER>_<VARNAME>" "<NAME>" {
    ...
}
```

There are two different `type`s: `resource` and `data`.
Examples of both of these can be found in `resources-and-data.tf` file. A `resource` block is used to describe one (or more) infrastructure objects. A `data` block is used for calling an existing data source so that it may be used elsewhere in the infrastructure code.


### Variable, Output, and Module Blocks
`variable`s, `output`s, and `module`s have a slightly different syntax because they do not include a `<provider>` or `<varname>`. They are simply defined as:

```
<variable|output|module> "<NAME>" {
    ...
}
```

Examples of these block types can be found in the `variables.tf`, `outputs.tf`, and `modules.tf` files, respectively.