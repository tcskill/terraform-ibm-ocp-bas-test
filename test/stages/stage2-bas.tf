module "masbas" {
  source = "./module"

  cluster_config_file      = module.dev_cluster.config_file_path
  cluster_type             = module.dev_cluster.platform.type_code
  cluster_ingress_hostname = module.dev_cluster.platform.ingress
  tls_secret_name          = module.dev_cluster.platform.tls_secret
  
  bas_dbpassword=var.mybas_dbpassword
  bas_grafapassword=var.mybas_grafapassword
}
