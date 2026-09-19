terraform {
    required_providers {
      azurerm={
        source ="hashicorp/azurerm"
        version="4.81.0"
      }
    }
    backend "azurerm"{
      container_name = "finalaction"
      resource_group_name = "rgsept"
      storage_account_name = "resuableaction"
      key = "tfstae_dev"
    }
}

provider "azurerm"{
    features{}
    use_oidc = true
}


