# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

# Azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "East Us"
}

# Azure Resource Group Name
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "akintola-capstone-project"
}

# Azure AKS Environment Name
  variable "environment" {
#    type = string  
   description = "This variable defines the Environment"  
# #   default = "qa"
  }


# AKS Input Variables

# SSH Public Key for Linux VMs
variable "ssh_public_key" {
#  default = "C:\Users\User17\Desktop\capstone-project\pipeline-project\azure-devops-aks-kubernetes-terraform-pipeline\akintola-aks-terraform-devops-ssh-key-ububtu.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "P@ssword!"
  description = "This variable defines the Windows admin password k8s Worker nodes"  
}

