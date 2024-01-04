terraform {
  required_version = ">=1.0"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    locals={
      resource_group="app-grp"
      location= "South East Asia"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
  backend "remote" {
		hostname = "app.terraform.io"
		organization = "DevOpsLabs"

		workspaces {
			name = "AzureAKSLabs"
		}
	}
}

provider "azurerm" {
      subscription_id = "ee3b4c5c-9edb-42c3-a37b-2b5a65fd1c61"
      client_id = "c9c59e08-342f-4f89-bdc6-2c7820d4e70b"
      client_secret = "Qah8Q~HFARjQl27eHAPDn2dUQzCW3dIbC_xT~c9T"
      tenant_id = "fdd345f9-103a-4dcf-8685-4bde04046f0c"
  features {}
}