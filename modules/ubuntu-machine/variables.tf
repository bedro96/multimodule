variable "ubuntu_server_subnet_id"{
  description = "Subnet id from virtual-network module"
}

variable "ubuntu_resource_group_name" {
  description = "Resource group name where ubuntu server should belongs to"

}

variable "ubuntu_resource_group_location" {
  description = "Location of resource group for ubuntu server"
}
