module "vpc" {
  source                  = "./module/networking"
  name                    = var.name
  vpc_name                = var.vpc_name
  public_subnet_name      = var.public_subnet_name
  private_subnet_name2    = var.private_subnet_name2
  igw_name                = var.igw_name
  public_route_table_name = var.public_route_table_name
  tags                    = var.tags
}

module "securitygroup" {
  source           = "./module/security-grp"
  name             = var.name
  description      = "Allow SSH and HTTP inbound traffic"
  vpc_id           = module.vpc.vpc_id
  ssh_allowed_cidr = var.ssh_allowed_cidr
  tags             = var.tags
}

module "ec2" {
  source             = "./module/ec2"
  AMI_ID             = var.AMI_ID
  instance_type      = var.instance_type
  key_name           = var.key_name
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.securitygroup.security_group_id]
}

module "s3" {
  source         = "./module/s3"
  s3_bucket_name = var.bucket_name
  tags           = var.tags
}
