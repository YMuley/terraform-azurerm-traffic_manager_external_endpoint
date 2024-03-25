locals {
  traffic_manager_external_endpoint = { for traffic_manager_external_endpoint in var.traffic_manager_external_endpoint_list : traffic_manager_external_endpoint.name => traffic_manager_external_endpoint }
}
