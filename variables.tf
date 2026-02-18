variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "admin_username" {
  description = "Admin username"
  type        = string
}

variable "admin_password" {
  description = "Admin password"
  type        = string
  sensitive   = true
}
variable "os_type" {
  description = "Operating system type"
  type        = string
}
variable "tags" {
  description = "Common tags for resources"
  type        = map(string)
}

