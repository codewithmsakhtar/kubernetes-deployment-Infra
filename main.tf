resource "azurerm_resource_group" "rg" {
  name     = "test-rg007"
  location = "eastasia"
}   

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-007"
  location            = "eastasia"
  resource_group_name = "test-rg007"
  dns_prefix          = "aks-007-dns"

  default_node_pool {
    name       = "default"
    node_count =  1
    vm_size    =   "Standard_D2ads_v5"

    
  
  


}

identity {
      type = "SystemAssigned"
    }        

  
 
}




  
