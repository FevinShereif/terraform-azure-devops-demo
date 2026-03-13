variable "location" {}
variable "vm_name" {}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
}

variable "os_type" {
  description = "Operating system type"
  type        = string

  validation {
    condition     = contains(["windows", "linux"], lower(var.os_type))
    error_message = "os_type must be either 'windows' or 'linux'."
  }
}

variable "disk_size" {
  description = "OS Disk Size in GB"
  type        = number

  validation {
    condition = (
      (lower(var.os_type) == "windows" && var.disk_size >= 127) ||
      (lower(var.os_type) == "linux" && var.disk_size >= 30)
    )

    error_message = "Invalid disk size. Windows requires >= 127GB. Linux requires >= 30GB."
  }
}

variable "admin_username" {}
variable "admin_password" {}



variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)

  default = {
    environment = "dev"
    owner       = "fevin"
    project     = "terraform-learning"
    costcenter  = "free-trial"
  }
}
