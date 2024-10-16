---
display_name: node-js
description: NodeJS workspace install
icon: https://avatars.githubusercontent.com/u/9011267?v=4
maintainer_github: fcma
verified: true
tags: [nodejs]
---

# NodeJS

Automatically install NodeJS

```tf
module "node-js" {
  source   = "git::https://github.com/Farm-Credit-Mid-America/Fcma.Coder.Terraform.Modules.git//Node"
  agent_id = coder_agent.main.id
}
```
