variable "tools" {
  default = {
    vault = {
      vm_size = "Standard_DS1_v2"
      spot    = true
    }
    github-runner = {
      vm_size = "Standard_DS1_v2"
      spot    = false
    }
#     elk-stack = {
#       vm_size = "Standard_E2bds_v5"
#       spot    = true
#     }
  }
}

variable "rg_name" {
  default = "project-setup-1"
}
variable "rg_location" {
  default = "UK West"
}

