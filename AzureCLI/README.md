---
display_name: azure-cli
description: Azure CLI workspace install
icon: https://avatars.githubusercontent.com/u/9011267?v=4
maintainer_github: fcma
verified: true
tags: [azurecli]
---

# Azure CLI

Automatically install the Azure CLI

```tf
module "azure-cli" {
  source   = "git::https://github.com/Farm-Credit-Mid-America/Fcma.Coder.Terraform.Modules.git//AzureCLI"
  agent_id = coder_agent.main.id
}
```
