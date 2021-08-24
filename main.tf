module "networking" {
  source = ".//modules/networking"
}

module "ec2" {
  source                        = ".//modules/ec2"
  vpc_security_group_id_for_ec2 = module.networking.vpc_security_group_id_for_ec2
  subnet_id_for_ec2             = module.networking.subnet_id_for_ec2
}

module "dataset" {
  source                        = ".//modules/rds"
  db_subnet_group_name          = module.networking.db_subnet_group
  vpc_security_group_id_for_ec2 = module.networking.vpc_security_group_id_for_ec2
}