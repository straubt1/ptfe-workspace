variable "prefix" {}
variable "location" {}
variable "tags" {
  default = {}
  type    = map
}

resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-rg"
  location = var.location

  tags = var.tags
}

