terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
      version = "1.24.3"
    }
  }
}

provider "vsphere" {
  user           = "USERNAME"
  password       = "PASSWORD"
  vsphere_server = "VCENTER_URL"
  allow_unverified_ssl = true
}
