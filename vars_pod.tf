#Name of folder to be created, also uniqueness value for disk, etc
variable "id" {
  default     = "aviVMware"
}

variable "owner" {
  description = "Sets the AWS Owner tag appropriately"
  default     = "aviVMware_Training"
}
#Number of controllers to deploy
variable "pod_count" {
  default     = "1"
}

#Controller Details
variable "controller" {
  type = map
  default = {
    cpu = 8
    memory = 24768
    template = "controller-18.2.6-9134-template"
  # mgmt_ip = ""
  # mgmt_mask = ""
  # default_gw = ""
  }
}

variable "jumpbox" {
  type = map
  default = {
    cpu = 2
    memory = 4096
    template = "ubuntu-18.04-server-template"
  # mgmt_ip = ""
  # mgmt_mask = ""
  # default_gw = ""
  }
}

variable "avi_default_password" {
}

variable "avi_admin_password" {
}

variable "avi_backup_admin_username" {
}

variable "avi_backup_admin_password" {
}

variable "lab_timezone" {
  description = "Lab Timezone: PST, EST, GMT or SGT"
  default = "EST"
}