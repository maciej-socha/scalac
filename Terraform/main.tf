module "networking" {
  source    = "./modules/networking"
  namespace = var.namespace
}

module "ssh-key" {
  source    = "./modules/ssh-key"
  namespace = var.namespace
}

module "ec2" {
  source        = "./modules/ec2"
  namespace     = var.namespace
  vpc           = module.networking.vpc
  sg_ssh_id     = module.networking.sg_ssh
  sg_http_id    = module.networking.sg_http
  sg_jenkins_id = module.networking.sg_jenkins
  key_name      = module.ssh-key.key_name
}