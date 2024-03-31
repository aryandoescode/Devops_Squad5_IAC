provider "azurerm" {
  features {}
}

# Module for VM1
module "vm1" {
  source = "./modules/JenkinsVM"

prefix   = var.prefix
location = var.location

}

# Module for VM2
module "vm2" {
  source = "./modules/SonarVM"

prefix   = var.prefix2
location = var.location

}
