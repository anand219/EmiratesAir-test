variable "resource_group_name" {
  description = "Resource group name will be provided"
}

variable "location" {
  description = "Location of resource group and resource will be created"
}

variable "vnet_name" {
  description = "Name of the Virtual name will be provided"
}

variable "vnet_address" {
  description = "Address space of Vnet will be given"
}

variable "subnet_name" {
  description = "Subnet details will be provided"
}

variable "subnet_address" {
  description = "Address space of Subnet will be provided"
}

variable "Vm1_name" {
  description = "Vm 1 name will be provided"
}

variable "vm_size" {
  description = "Size of the VM will be given"
}

variable "admin_username" {
  description = "Admin user name will be given"
}

variable "admin_password" {
  description = "Admin password will be given"
}