# AAP 2.7 assets

- **`execution-environment/`** — Build EE with `ansible.windows`, `amazon.aws`, `azure.azcollection`, `servicenow.itsm`
- **`controller/`** — Export job templates and workflow from AAP when configured (config-as-code)

Suggested workflow name: `Demo-Windows-Patch-Lifecycle`

| Step | Job template (playbook) |
|------|-------------------------|
| 1 | `playbooks/snapshot.yml` |
| 2 | `playbooks/patch_windows.yml` |
| 3 | `playbooks/nessus_validate.yml` |
| 4 | `playbooks/servicenow_update.yml` |

Store **credential templates** in `controller/credentials/` (no secrets).
