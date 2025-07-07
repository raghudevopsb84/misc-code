module "tools-vm" {
  for_each    = var.tools
  source      = "./vm"
  rg_location = var.rg_location
  rg_name     = var.rg_name
  name        = each.key
  vm_size     = each.value["vm_size"]
  spot        = each.value["spot"]
  disk_size_gb = try(each.value["disk_size_gb"], 30)
}


