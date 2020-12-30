module "vm" {
  source       = "modules/vm/"
  azure_region = var.azure_region
}

module "virtual-disk" {
  source             = "modules/virtual-disk/"
  vsphere_datacenter = var.vsphere_datacenter
  vsphere_datastore  = var.vsphere_datastore
  virtual_disk_size  = var.virtual_disk_size
  virtual_disk_type  = var.virtual_disk_type
}
