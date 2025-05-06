# Terraform Directory Structure Example 1

This directory demonstrates a basic approach to organizing Terraform configurations using directory structures. It also shows how directores can _not_ be used to organize Terraform code.

## Directory Structure

```
example1/
├── main.tf
├── modules/
│   └── module1/
│       └── main.tf
└── someOtherDir/
    └── main.tf
```

## Usage

1. Navigate to this directory
2. Initialize Terraform: `terraform init`
3. Review the planned changes: `terraform plan`

It isn't necessary to apply the changes, but if you do, run `terraform apply` and follow the prompts.
4. Clean up resources: `terraform destroy`

## Key Concepts Illustrated

- Basic directory organization
- Use of modules
- what counts as a module
