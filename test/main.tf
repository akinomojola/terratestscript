terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.42.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "c4f83d6a-ca80-468b-b372-565f768be207"
  features {}
}

module "test_grp" {
  source = "./modules"
}

# module "vnetpeering" {
#   source = "./modules/vnetpeering.tf"
# }