resource "vsphere_virtual_disk" "virtual_disk" {
  size       = var.virtual_disk_size
  vmdk_path  = "terraform.vmdk"
  datacenter = var.vsphere_datacenter
  datastore  = var.vsphere_datastore
  type       = var.virtual_disk_type
}
