#You need to add terraform version
terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "1.24.3"
    }
  }
}

#
# terraform {
#   required_version = ">= 0.12.29"

#   required_providers {
#     azurerm = ">= 2.41.0"
#   }
# }

