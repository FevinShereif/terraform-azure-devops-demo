variable "location" {}
variable "vm_name" {}
variable "vm_size" {
  description = "Azure VM size"
  type        = string

validation {
  condition     = contains(["Standard_B1s", "Standard_B2s"], var.vm_size)
  error_message = "Free Subscription allows only: Standard_B1s, Standard_B2s."
}
}
variable "admin_username" {}
variable "admin_password" {}
variable "os_type" {
  description = "Operating system type"
  type        = string

  validation {
    condition     = contains(["windows", "linux"], lower(var.os_type))
    error_message = "os_type must be either 'windows' or 'linux'."
  }
}
variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}
