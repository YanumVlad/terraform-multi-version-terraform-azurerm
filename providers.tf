#
# For more configuration options, see:
# https://www.terraform.io/docs/providers/azurerm/index.html
#
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}
