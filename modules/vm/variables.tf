variable "location" {}
variable "vm_name" {}

variable "allowed_vm_sizes" {
  description = "Allowed VM sizes for free subscription"
  type        = list(string)
  default     = ["Standard_B1s", "Standard_B2s"]
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string

  validation {
    condition     = contains(var.allowed_vm_sizes, var.vm_size)
    error_message = "This subscription allows only the following VM sizes: ${join(", ", var.allowed_vm_sizes)}"
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
