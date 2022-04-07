variable "management_group" {
  description = "Specifies the name of the management group to create"
  default     = null
}
variable "management_group_guid" {
  description = "Specifies the guid of the management group to create - If variable is null, GUID will be created. Othwerise string value will be used as GUID"
  default     = null
}

variable "parent_management_group" {
  description = "Specifies the name of the parent management group that is being created"
  default     = null
}

variable "has_parent_management_group" {
  description = "Specifies whether the management group has a parent management group"
  default     = false
}

variable "contains_subcriptions" {
  description = "Specifies whether the management group contains any subscriptions"
  default     = false
}

variable "subs" {
  description = "a list of subscriptions"
  default     = null
}
