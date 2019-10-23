variable "azure_subscription_id" {
  type = string
}

variable "azure_client_id" {
  type = string
}

variable "azure_client_secret" {
  type = string
}

variable "azure_tenant_id" {
  type = string
}

variable "azure_region" {
  type = string
}

variable "openshift_cluster_name" {
  type = string
}

variable "openshift_master_count" {
  type    = string
  default = 3
}

variable "openshift_worker_count" {
  type    = string
  default = 3
}

variable "machine_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "azure_dns_resource_group_name" {
  type = string
}

variable "azure_master_vm_type" {
  type    = string
  default = "Standard_D4s_v3"
}

variable "azure_bootstrap_vm_type" {
  type    = string
  default = "Standard_D4s_v3"
}

variable "azure_worker_vm_type" {
  type    = string
  default = "Standard_D4s_v3"
}


variable "base_domain" {
  type = string
}

variable "openshift_cluster_network_cidr" {
  type    = string
  default = "10.128.0.0/14"
}

variable "openshift_cluster_network_host_prefix" {
  type    = string
  default = 23
}

variable "openshift_service_network_cidr" {
  type    = string
  default = "172.30.0.0/16"
}

variable "openshift_pull_secret" {
  type    = string
  default = "pull-secret"
}


variable "azure_master_root_volume_size" {
  type    = string
  default = 1024
}

variable "azure_worker_root_volume_size" {
  type    = string
  default = 128
}

variable "azure_rhcos_image_id" {
  type    = string
  default = "/resourceGroups/rhcos_images/providers/Microsoft.Compute/images/rhcostestimage"
}

variable "bootstrap_complete" {
  type    = bool
  default = false
}
