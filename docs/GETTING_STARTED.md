# Getting started in Cursor / local IDE

## 1. Open the project

Open folder: `Tenable + AAP` (this repo root).

## 2. Phase 0 — what you have now

- Ansible playbooks wired to roles (mostly `debug` / TODO stubs)
- Terraform skeleton for AWS and Azure
- Docs for run-of-show and comparison slide notes
- `.gitignore` for secrets and artifacts

## 3. Validate Ansible locally (no cloud)

```bash
cd ansible
python3 -m venv .venv && source .venv/bin/activate   # optional
pip install ansible-core ansible-pywinrm
ansible-galaxy collection install -r collections/requirements.yml
ansible-playbook playbooks/site.yml --syntax-check
```

With `patch_dry_run: true` (default), patching tasks only emit debug messages.

## 4. Git workflow (local first, GitHub when ready)

Your remote (not pushed until you choose):

```text
https://github.com/sylviyayy/tenable_nessus_aap_demo.git
```

```bash
cd "/Users/sygoh/Tenable + AAP"
git status
git add .
git commit -m "Scaffold Phase 0 demo repo structure"
# When ready:
git remote add origin https://github.com/sylviyayy/tenable_nessus_aap_demo.git
git branch -M main
git push -u origin main
```

If `origin` already exists on GitHub with content, use `git pull origin main --rebase` before first push.

## 5. When to provision AWS/Azure

**Not required for Phase 0–1.** Provision when you implement:

- `terraform/modules/aws_windows_demo`
- WinRM connectivity tests from your laptop or a jump host

Then update `ansible/inventories/demo/hosts.yml` with real IPs.

## 6. What not to share in chat or git

- AWS/Azure credentials, `.auto.tfvars`, Nessus API keys, ServiceNow passwords
- AAP admin passwords

Share redacted error messages only when debugging.

## 7. Suggested next implementation order

1. AWS module + one Windows VM + WinRM test playbook
2. `windows_patch_pinned` with real KB list from Nessus baseline
3. Azure VM + same patch role
4. Nessus scanner VM + `nessus_scan` role
5. AAP workflow import
6. ServiceNow REST launch
