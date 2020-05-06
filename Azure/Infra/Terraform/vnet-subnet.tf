# Create virtual network
resource "azurerm_virtual_network" "TFNet" {
    name                = "myVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "westeurope"
    resource_group_name = "TFResourceGroup"

    tags = {
        enviornment = "Terraform"
        CreatedBy = "admin"
    }
}

# Create subnet
resource "azurerm_subnet" "tfsubnet" {
    name                    = "mySubnet"
    resource_group_name     = "TFResourceGroup"
    virtual_network_name    = azurerm_virtual_network.TFNet.name
    address_prefix          = "10.0.1.0/24"

}
# Create subnet2
resource "azurerm_subnet" "tfsubnet2" {
    name                    = "mySubnet2"
    resource_group_name     = "TFResourceGroup"
    virtual_network_name    = azurerm_virtual_network.TFNet.name
    address_prefix          = "10.0.2.0/24"
    
}