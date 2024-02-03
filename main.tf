module "ec2" {
  source = "./modules/ec2"
  sg    = module.sg.sgid
}

module "sg" {
  source = "./modules/sg"
}
