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
  description = "The version of dotnet to install."
  default     = "8.0"
}

resource "coder_script" "dotnet" {
  agent_id     = var.agent_id
  display_name = "dotnet"
  icon         = "data:image/jpeg;base64, ${filebase64("${path.module}/dotnet.png")}"
  script = templatefile("${path.module}/run.sh", {
    INSTALL_VERSION : var.install_version
  })
  run_on_start = true
}
