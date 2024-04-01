provider "azurerm" {
  features {}
}


module "vm1" {
  source = "./modules/JenkinsVM"

prefix   = var.jenkins
location = var.location

}

module "vm2" {
  source = "./modules/SonarVM"

prefix   = var.sonar
location = var.location

}

module "vm3" {
  source = "./modules/TomcatVM"

prefix   = var.tomcat
location = var.location

}

module "AKS" {
  source = "./modules/AKS"

prefix   = var.aks
location2 = var.location2

}
