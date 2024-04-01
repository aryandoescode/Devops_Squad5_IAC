provider "azurerm" {
  features {}
}

/*
module "jenkins" {
  source = "./modules/JenkinsVM"

prefix   = var.jenkins
location = var.location

}
*/
module "sonar" {
  source = "./modules/SonarVM"

prefix   = var.sonar
location = var.location

}

module "tomcat" {
  source = "./modules/TomcatVM"

prefix   = var.tomcat
location = var.location

}

module "AKS" {
  source = "./modules/AKS"

prefix   = var.aks
location2 = var.location2

}
