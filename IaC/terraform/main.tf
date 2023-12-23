module "tf-yc-instance" {
  source    = "./modules/tf-yc-instance"
  image_id  = var.image_id
  zone      = var.zone
  subnet_id = module.tf-yc-network.yandex_vpc_subnets[var.zone].subnet_id
}

module "tf-yc-network" {
    source = "./modules/tf-yc-network"
}