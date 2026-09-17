# Terraform — demo lab

Provision in order:

1. `terraform/envs/aws` — VPC, Windows EC2, security groups (WinRM + Nessus scan paths)
2. `terraform/envs/azure` — VNet, Windows VM, NSG
3. `terraform/modules/nessus_scanner` — attach to AWS or Azure per your architecture diagram

Copy `terraform.tfvars.example` → `terraform.tfvars` (gitignored if named `*.auto.tfvars`).

After apply, update [`ansible/inventories/demo/hosts.yml`](../ansible/inventories/demo/hosts.yml) with private IPs.
