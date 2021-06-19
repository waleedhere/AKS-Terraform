#KeyVault Resource Group and KeyVaultName
variable "keyvault_rg" {
  type    = string
}
variable "keyvault_name" {
  type    = string
}

variable "azure_region" {
  type    = string
  default = "eastus"
}

#  Resource Group Name
variable "resource_group" {
  type    = string
  default = "AKS-COE-Cluster-RG"
}

# AKS Cluster name
variable "cluster_name" {
  type    = string
  default = "AKS-COE"
}

#AKS DNS name
variable "dns_name" {
  type    = string
  default = "AKS-COE"
}

variable "admin_username" {
  type    = string
  default = "aksadmin"
}

# Specify a valid kubernetes version
variable "kubernetes_version" {
  type    = string
  default = "1.18.6"
}

#AKS Agent pools
variable "agent_pools" {
  default = [
    {
      name            = "pool"
      count           = 2
      vm_size         = "Standard_D1_v2"
      os_type         = "Linux"
      os_disk_size_gb = "30"
    }
  ]
}
