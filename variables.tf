variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default= "eastus"
}

variable "jenkins" {
  description = "Prefix to be used for naming resources"
  type        = string
  default   = "jenkins"
}


variable "sonar" {
  description = "Prefix to be used for naming resources"
  type        = string
  default   = "sonar"
}

variable "tomcat" {
  description = "Prefix to be used for naming resources"
  type        = string
  default   = "tomcat"
}
variable "aks" {
  description = "Prefix to be used for naming resources"
  type        = string
  default = "aks"
}
variable "location2" {
  description = "Prefix to be used for naming resources"
  type        = string
  default   = "westus"
}