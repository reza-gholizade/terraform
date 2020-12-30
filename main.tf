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

resource "vsphere_virtual_machine" "vm" {
  name             = var.vsphere_virtual_machine_name
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus = 1
  memory   = 1024
  # guest_id = data.vsphere_virtual_machine.template.guest_id
  # scsi_type = data.vsphere_virtual_machine.template.scsi_type
  # wait_for_guest_net_timeout = 0
  # wait_for_guest_net_routable = false
  network_interface {
    network_id   = data.vsphere_network.network.id
    # adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }
  # disk {
  #   label            = "disk0"
  #   size             = data.vsphere_virtual_machine.template.disks.0.size
  #   eagerly_scrub    = data.vsphere_virtual_machine.template.disks.0.eagerly_scrub
  #   thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
  # }
  # clone {
  #   // # ... other configuration ...
  #   template_uuid = data.vsphere_virtual_machine.template.id
  #   customize {
  #     // # ... other configuration ...
  #     linux_options {
  #       host_name = var.vsphere_virtual_machine_name
  #       domain    = "cluster.local"
  #       time_zone  = "Asia/Tehran"
  #     }
  #     network_interface {
  #       ipv4_address = "192.168.1.10"
  #       ipv4_netmask = 24
  #     }
  #     ipv4_gateway = "192.168.1.1"
  #   }
  # }
  ovf_deploy {
    local_ovf_path = "/ova/ubuntu18-cloudimg.ova"
    disk_provisioning = "thin"
  } # end ovf_deploy
}
