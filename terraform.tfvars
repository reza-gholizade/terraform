#vsphere virtual disk variables
virtual_disk_size  = ""
virtual_disk_type  = ""
vsphere_datacenter = "DATACENTER_NAME"
vsphere_datastore  = "DATASTORE_NAME"

#Your variables
vsphere_user                     = "CLUSTER_NAME"
vsphere_password                 = "PASSWORD"
vsphere_server                   = "VCENTER_URL"
vsphere_resource_pool            = "RESOURCEPOOL_NAME"
num_cpus                         = "1"
memory                           = "1024"
vsphere_network                  = "NETWORK_NAME"
vsphere_host                     = "HOST_IP"
vsphere_virtual_machine_template = "TEMPLATE_NAME"
vsphere_virtual_machine_name     = "VM_NAME"

#Redis variables
registry                         = "YOUR REGISTRY"
repository                       = "YOUR IMAGE REPO"
storageclass                     = "YOUR STORAGECLASS NAME"
tag                              = "IMAGE TAG"
usepass                          = " true or false"
context                          = "your k8s cluster context name"
