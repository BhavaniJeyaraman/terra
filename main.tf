provider "azurerm" {
        version = "=1.27.0"
}
resource "azurerm_resource_group" "example" {
        name = "Test_RG"
        location = "southindia"
}
resource "azurerm_virtual_network" "example" {
        name = "Test_VNet"
        resource_group_name = "${azurerm_resource_group.example.name}"
        location = "${azurerm_resource_group.example.location}"
        address_space = ["10.0.0.0/16"]
}
