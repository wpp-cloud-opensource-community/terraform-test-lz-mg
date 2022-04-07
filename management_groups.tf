resource "azurerm_management_group" "management_group" {
  display_name               = var.management_group
  name                       = var.management_group_guid
  parent_management_group_id = var.has_parent_management_group == true ? data.azurerm_management_group.parent[0].id : null
  subscription_ids           = var.subs
}
