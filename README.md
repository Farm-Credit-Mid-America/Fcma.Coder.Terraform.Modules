Modules extend Coder Templates to create reusable components for your development environment.

e.g.

```tf
module "dotnet" {
  source   = "git::https://github.com/Farm-Credit-Mid-America/Fcma.Coder.Terraform.Modules.git//DotNet"
  agent_id = coder_agent.main.id
  install_version = "8.0"
}
```

Current Library
---

- DotNet
- AzureCLI
- Node JS