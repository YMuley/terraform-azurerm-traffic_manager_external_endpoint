resource "azurerm_traffic_manager_external_endpoint" "traffic_manager_external_endpoint" {
  for_each   = local.traffic_manager_external_endpoint
  name       = each.value.name
  profile_id = var.traffic_manager_profile_output[each.value.traffic_manager_profile_name].id
  weight     = each.value.weight
  target     = each.value.target
}
