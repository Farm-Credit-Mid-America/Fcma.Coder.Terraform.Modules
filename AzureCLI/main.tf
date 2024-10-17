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

resource "coder_script" "azure-cli" {
  agent_id     = var.agent_id
  display_name = "azure-cli"
  icon         = "data:image/svg+xml;base64, ${filebase64("${path.module}/azure.svg")}"
  script = templatefile("${path.module}/run.sh", {})
  run_on_start = true
}
