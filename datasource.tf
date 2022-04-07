data "azurerm_management_group" "parent" {
  count        = var.has_parent_management_group == true ? 1 : 0
  display_name = var.parent_management_group
}

