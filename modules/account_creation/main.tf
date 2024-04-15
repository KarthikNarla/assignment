resource "aws_organizations_account" "new_account" {
  name      = var.account_name
  email     = var.account_email
  role_name = "OrganizationAccountAccessRole"
}

output "account_id" {
  value = aws_organizations_account.new_account.id
}
