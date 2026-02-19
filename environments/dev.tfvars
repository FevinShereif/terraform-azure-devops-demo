location = "eastus2"
vm_name         = "devvm01"
vm_size = "Standard_B1s"
admin_username  = "azureuser"
admin_password  = "YourStrongPassword123!"
os_type = "windows"
tags = {
  environment = "dev"
  owner       = "fevin"
  project     = "terraform-learning"
  costcenter  = "free-trial"
}
allowed_vm_sizes = ["Standard_B1s", "Standard_B2s"]
