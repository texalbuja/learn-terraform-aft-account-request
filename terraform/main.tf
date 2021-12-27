module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aft-sandbox@infraws.xyz"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "aft-sandbox@infraws.xyz"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
module "development" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aft-dev@infraws.xyz"
    AccountName               = "aft-dev"
    ManagedOrganizationalUnit = "Development"
    SSOUserEmail              = "aft-dev@infraws.xyz"
    SSOUserFirstName          = "Development"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Tex Albuja"
    change_reason       = "Environment created for Development process"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "development"
}

module "qa" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aft-qa@infraws.xyz"
    AccountName               = "aft-qa"
    ManagedOrganizationalUnit = "QA"
    SSOUserEmail              = "aft-qa@infraws.xyz"
    SSOUserFirstName          = "QA"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Tex Albuja"
    change_reason       = "Environment created for QA process"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "qa"
}