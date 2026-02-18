output "vm_name" {
  description = "Name of the Virtual Machine"
  value = var.os_type == "windows" ? azurerm_windows_virtual_machine.windows_vm[0].name : azurerm_linux_virtual_machine.linux_vm[0].name
}

output "vm_private_ip" {
  description = "Private IP of the VM"
  value       = azurerm_network_interface.nic.private_ip_address
}

output "resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.rg.name
}
