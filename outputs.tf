output "bas_key" {
  value       = data.local_file.baskey.content
  description = "api key for BAS"
  depends_on  = [
    null_resource.deploy_bas
  ]
}

output "bas_namespace" {
  value       = var.bas_projectName
  description = "Namespace bas is located in cluster"
  depends_on  = [
    null_resource.deploy_bas
  ]
}
