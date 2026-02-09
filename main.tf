module "avm-res-automation-automationaccount" {
  source  = "Azure/avm-res-automation-automationaccount/azurerm"
  version = "0.2.0"
  location = "West Europe"
  name = "mh_automation_account_test"
  resource_group_name = "mh_rg_test"
  sku = "Free"
}

