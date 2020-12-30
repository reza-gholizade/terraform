#This file only for Data
data "vsphere_datacenter" "dc" {
  name = var.vsphere_datacenter
}

data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = var.vsphere_resource_pool
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_host" "host" {
  name          = var.vsphere_host
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = var.vsphere_network
  datacenter_id = data.vsphere_datacenter.dc.id
}

# data "vsphere_virtual_machine" "template" {
#   name          = var.vsphere_virtual_machine_template
#   datacenter_id = data.vsphere_datacenter.dc.id
# }

# resource "vsphere_virtual_disk" "myDisk" {
#   size       = 30
#   vmdk_path  = "terraform.vmdk"
#   datacenter = var.vsphere_datacenter
#   datastore  = var.vsphere_datastore
#   type       = "thin"
# }
