resource "vault_mount" "kv" {
  for_each    = var.secrets
  path        = each.key
  type        = "kv"
  options     = { version = "2" }
  description = each.value["description"]
}

# resource "vault_kv_secret_v2" "values" {
#   for_each = var.secrets
#   mount    = vault_mount.kv.path
#   name     = "secret"
#   data_json = jsonencode(
#     {
#       zip = "zap",
#       foo = "bar"
#     }
#   )
# }


output "kv" {
  value = vault_mount.kv
}

