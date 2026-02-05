variable "aks_name" {
  type = string
  default = ""
}

variable "location" {
  type = string
  default = "East US"
}

variable "resource_group_name" {
  type = string
}

variable "acr_name" {
  type = string
}

variable "node_count" {
  type    = number
  default = 1
}

variable "vm_size" {
  type    = string
  default = "Standard_D2_v3"
}
