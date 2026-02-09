module "avm-res-automation-automationaccount" {
  source  = "Azure/avm-res-automation-automationaccount/azurerm"
  version = "0.2.0"
  location = "West Europe"
  name = "mh_automation_account_test"
  resource_group_name = "mh_rg_test"
  sku = "Free"
}

resource "azurerm_resource_group" "example" {
  name     = "mh_rg_test"
  location = "West Europe"
}

resource "azurerm_automation_account" "example" {
  name                = "example-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku_name            = "Free"

  tags = {
    environment = "Test"
  }
}

/*
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_automation_account" "example" {
  name                = "example-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku_name            = "Basic"
}

resource "azurerm_automation_source_control" "example" {
  name                  = "example"
  automation_account_id = azurerm_automation_account.example.id
  folder_path           = "runbook"

  security {
    token      = "ghp_xxx"
    token_type = "PersonalAccessToken"
  }
  repository_url      = "https://github.com/foo/bat.git"
  source_control_type = "GitHub"
  branch              = "main"
}
*/