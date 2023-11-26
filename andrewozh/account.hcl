locals {
  account_name   = "andrewozh"
  aws_account_id = "066477712859"

  users = [
    {
      name = "andrew.ozhegov"
      groups = ["admin"]
    },
    {
      name = "jane.doe"
      groups = ["dev"]
    }
  ]

  groups = [
    {
      name = "admin"
      policy_arns = [
        "arn:aws:iam::aws:policy/AdministratorAccess"
      ]
    },
    {
      name = "dev"
      policy_arns = [
        "arn:aws:iam::aws:policy/ReadOnlyAccess"
      ]
    }
  ]

  tags = {
    Account      = local.account_name
    Terragrunt   = "true"
  }
}
