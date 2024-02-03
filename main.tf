module "ec2" {
  source = "./modules/ec2"
  sgid    = module.sg.sgid

}

module "sg" {
  source = "./modules/sg"
}
