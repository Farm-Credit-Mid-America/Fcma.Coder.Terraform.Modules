---
display_name: dotnet
description: DotNet workspace install
icon: https://avatars.githubusercontent.com/u/9011267?v=4
maintainer_github: fcma
verified: true
tags: [dotnet]
---

# Dotnet

Automatically install the .NET version of your choice

```tf
module "dotnet" {
  source   = "git::https://github.com/Farm-Credit-Mid-America/Fcma.Coder.Terraform.Modules.git//DotNet"
  agent_id = coder_agent.main.id
  install_version = "8.0"
}
```
