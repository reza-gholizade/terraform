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
variable "vsphere_user" {
  default = "reza@cluster.local"
}

# vsphere account password. empty by default.
variable "vsphere_password" {}

# vsphere server, defaults to localhost
variable "vsphere_server" {
  default = "localhost"
}

variable "vsphere_host" {}
# vsphere datacenter the virtual machine will be deployed to. empty by default.
variable "vsphere_datacenter" {}

# vsphere resource pool the virtual machine will be deployed to. empty by default.
variable "vsphere_resource_pool" {}

# vsphere datastore the virtual machine will be deployed to. empty by default.
variable "vsphere_datastore" {}

# vsphere network the virtual machine will be connected to. empty by default.
variable "vsphere_network" {}

# vsphere virtual machine template that the virtual machine will be cloned from. empty by default.
variable "vsphere_virtual_machine_template" {}

# the name of the vsphere virtual machine that is created. empty by default.
variable "vsphere_virtual_machine_name" {}
