output "cluster_id" {
  value = local.cluster_id
}

output "resource_group" {
  value = module.infrastructure.resource_group_name
}
