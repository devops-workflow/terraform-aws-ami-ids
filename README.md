[![CircleCI](https://circleci.com/gh/devops-workflow/terraform-aws-ami-ids/tree/master.svg?style=svg)](https://circleci.com/gh/devops-workflow/terraform-aws-ami-ids/tree/master)

terraform-aws-ami-ids
=====================

Terraform module to lookup AMI IDs for use in other resources

Usage
-----

```hcl
module "ami-ids" {
  source        = "devops-workflow/ami-ids/aws"
  distribution  = "ecs"
}
```
