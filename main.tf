
provider "azurerm" {
  version = "~> 1.0"

}

#Generating a Random id for resource group

resource "random_id" "terraform_project"{
	byte_length = 4
}

resource "azurerm_resource_group" "trfm-rg" { 
  name     = "${random_id.terraform_project.hex}_terraform-rg"
  location = "West US"

  tags = {
    environment = "Development"
    owner       = "Shahnoor"
    purpose     = "terraform_session"
  }
}



#export ARM_TENANT_ID   = 
#export ARM_SUBSCRIPTION_ID = 
#export ARM_CLIENT_ID =
#export ARM_
