resource "azurerm_virtual_network" "cluster_vnet" {
  name                = "${var.cluster_id}-vnet"
  resource_group_name = var.resource_group_name
  location            = var.region
  address_space       = [var.vnet_cidr]
}

resource "azurerm_route_table" "route_table" {
  name                = "${var.cluster_id}-node-routetable"
  location            = var.region
  resource_group_name = var.resource_group_name
}

locals {
  service_endpoints = var.airgapped["enabled"] ? "Microsoft.ContainerRegistry" : ""
}

resource "azurerm_subnet" "master_subnet" {
  resource_group_name  = var.resource_group_name
  address_prefix       = local.master_subnet_cidr
  virtual_network_name = local.virtual_network
  name                 = "${var.cluster_id}-master-subnet"
  service_endpoints    = [local.service_endpoints]
}

resource "azurerm_subnet" "worker_subnet" {
  resource_group_name  = var.resource_group_name
  address_prefix       = local.worker_subnet_cidr
  virtual_network_name = local.virtual_network
  name                 = "${var.cluster_id}-worker-subnet"
  service_endpoints    = [local.service_endpoints]
}