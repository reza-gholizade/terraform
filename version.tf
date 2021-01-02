#You need to add terraform version
terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "1.24.3"
    }
  }
}

