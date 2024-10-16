terraform {
  required_version = ">= 1.0"

  required_providers {
    coder = {
      source  = "coder/coder"
      version = ">= 0.17"
    }
  }
}

variable "agent_id" {
  type        = string
  description = "The ID of a Coder agent."
}

variable "install_version" {
  type        = string
  description = "The version of node to install."
  default     = "21"
}

resource "coder_script" "node-js" {
  agent_id     = var.agent_id
  display_name = "node-js"
  icon         = "https://avatars.githubusercontent.com/u/9011267?v=4"
  script = templatefile("${path.module}/run.sh", {
    INSTALL_VERSION = var.install_version
  })
  run_on_start = true
}
