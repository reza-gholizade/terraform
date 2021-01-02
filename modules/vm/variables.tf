#Create VM
variable "vsphere_datacenter" {
  type        = string
  description = "The name of the datacenter in which to create the disk."
}

variable "vsphere_datastore" {
  type        = string
  description = "The name of the datastore in which to create the disk."
}

variable "num_cpus" {
  type        = string
  description = "The total number of virtual processor cores to assign to this virtual machine."
}

variable "memory" {
  type        = string
  description = "The size of the virtual machine's memory, in MB."
}

variable "virtual_disk_size" {
  type        = string
  description = "Size of the disk (in GB)."
}

variable "virtual_disk_type" {
  type        = string
  description = "The type of disk to create."
}

variable "vsphere_host" {
  type        = string
  description = " The IP of Host."
}

variable "vsphere_resource_pool" {
  type        = string
  description = "The managed object reference ID of the resource pool to put this virtual machine in."
}

variable "vsphere_network" {
  type        = string
  description = "The managed object reference ID of the Network."
}

variable "vsphere_virtual_machine_template" {
  type        = string
  description = " The UUID of the source virtual machine or template."
}

variable "vsphere_virtual_machine_name" {
  type        = string
  description = "The hostname of Optional vApp configuration."
}

variable "ssh_public_key" {
  type        = string
  description = "The ssh key for VM configuration"
}
