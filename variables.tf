#vsphere virtual disk variables
variable "vsphere_datacenter" {
  type        = string
  description = "The name of the datacenter in which to create the disk."
}

variable "vsphere_datastore" {
  type        = string
  description = "The name of the datastore in which to create the disk."
}

variable "virtual_disk_size" {
  type        = string
  description = "Size of the disk (in GB)."
}

variable "virtual_disk_type" {
  type        = string
  description = " The type of disk to create."
}

#Your variables
variable "vsphere_user" {}

# vsphere account password. empty by default.
variable "vsphere_password" {}

# vsphere server, defaults to localhost
variable "vsphere_server" {}

variable "vsphere_host" {}

# # vsphere resource pool the virtual machine will be deployed to. empty by default.
variable "vsphere_resource_pool" {}

# # vsphere network the virtual machine will be connected to. empty by default.
variable "vsphere_network" {}

# # vsphere virtual machine template that the virtual machine will be cloned from. empty by default.
variable "vsphere_virtual_machine_template" {}

# # the name of the vsphere virtual machine that is created. empty by default.
variable "vsphere_virtual_machine_name" {}
variable "ssh_public_key" {
  type = string
}
