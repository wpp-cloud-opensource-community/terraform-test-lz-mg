output "management_group" {
  value = azurerm_management_group.management_group
}

output "parent_management_group" {
  value = data.azurerm_management_group.parent
}