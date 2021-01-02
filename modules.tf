module "vm" {
  source                           = "./modules/vm/"
  vsphere_datacenter               = var.vsphere_datacenter
  vsphere_datastore                = var.vsphere_datastore
  vsphere_resource_pool            = var.vsphere_resource_pool
  num_cpus                         = var.num_cpus
  memory                           = var.memory
  vsphere_host                     = var.vsphere_host
  vsphere_network                  = var.vsphere_network
  vsphere_virtual_machine_template = var.vsphere_virtual_machine_template
  ssh_public_key                   = var.ssh_public_key
  vsphere_virtual_machine_name     = var.vsphere_virtual_machine_name
}

# module "virtual-disk" {
#   source             = "./modules/virtual-disk/"
#   vsphere_datacenter = var.vsphere_datacenter
#   vsphere_datastore  = var.vsphere_datastore
#   virtual_disk_size  = var.virtual_disk_size
#   virtual_disk_type  = var.virtual_disk_type
# }
