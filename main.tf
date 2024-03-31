provider "azurerm" {
  features {}
}

# Module for VM1
module "vm1" {
  source = "./modules/JenkinsVM"

prefix   = mitesh
location = eastus

}

# Module for VM2
module "vm2" {
  source = "./modules/SonarVM"

prefix   = mitesh1
location = eastus

}
