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

resource "azurerm_resource_group" "another" {
  name     = "${var.prefix}-another-rg"
  location = var.location

  tags = var.tags
}
