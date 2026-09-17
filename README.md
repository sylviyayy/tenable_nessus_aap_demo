# Tenable Nessus + AAP 2.7 — Cross-Cloud Windows Patch Demo

Security and platform teams run patch cycles with manual handoffs: scan in one tool, change approval in ITSM, snapshots in cloud consoles, patch via separate mechanisms per cloud, validation scan again, status updates copied into tickets. Cloud-native patch tools reduce toil within one cloud but do not naturally compose Tenable findings + multi-cloud execution + ITSM closure under one policy engine.

This demo looks at how Red Hat Ansible Automation Platform 2.7 can be integrated with vulnerability assessment scanners like Tenable Nessus and ITSM platforms like ServiceNow to determine and install missing patches for Windows servers—across **AWS and Azure** in one workflow, with Nessus validation and ServiceNow closure (canned, repeatable show).

Before I begin, I would like to give special thanks to [@eanylin](https://github.com/eanylin) for his contributions to this project. This would not have been possible without his existing playbooks and repositories on Ansible.

## Build phases (local first)

| Phase | What | Cloud needed? |
|-------|------|----------------|
| **0** | This repo scaffold, syntax-check playbooks | No |
| **1** | Fill roles + inventory; `ansible-playbook --syntax-check` | No |
| **2** | `terraform/envs/aws` then `azure` — Windows VMs + Nessus scanner | Yes |
| **3** | Import job/workflow templates into AAP | After Phase 2 |
| **4** | ServiceNow PDI REST → AAP launch | After Phase 3 |
| **5** | Nessus Professional trial (7-day clock) — start when scanner VM is up | Yes |

## Quick start (IDE)

```bash
cd ansible
ansible-galaxy collection install -r collections/requirements.yml
ansible-playbook playbooks/site.yml --syntax-check
```

## GitHub

```text
https://github.com/sylviyayy/tenable_nessus_aap_demo.git
```

Do **not** commit secrets. Use AAP Credential Manager and gitignored `*.auto.tfvars`.

## Layout

- [`ansible/`](ansible/) — Playbooks and roles for the patch lifecycle
- [`terraform/`](terraform/) — AWS/Azure lab infrastructure
- [`aap/`](aap/) — Execution environment + Controller export placeholders
- [`docs/`](docs/) — Runbooks and architecture
- [`servicenow/`](servicenow/) — Integration notes
- [`presenter/`](presenter/) — Slides and speaker notes

## Docs

- [Getting started in the IDE](docs/GETTING_STARTED.md)
- [60-minute run of show](docs/runbooks/60min-run-of-show.md)
- [Lab reset](docs/runbooks/lab-reset.md)
- [Azure UAM vs AAP](docs/comparison/azure-uam-vs-aap.md)
