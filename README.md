# Infrastructure as Code (IaC)

Create virtual machine from a ova with vsphere provider in terraform

import your variables in terraform.tfvars file 

for create a new vm , run these comands:
```
~$ terraform init
~$ terraform validate
~$ terraform plan -out planed
~$ terraform apply planed
```
for delete:
```
~$ terraform destroy
```

