provider "azurerm" {
  features {}
}

# Module for VM1
module "vm1" {
  source = "./modules/JenkinsVM"
}

# Module for VM2
module "vm2" {
  source = "./modules/SonarVM"

}
