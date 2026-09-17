# Azure Update Manager vs AAP (speaker notes)

**One-liner:** Azure Update Manager is the right control plane *inside Azure*; AAP orchestrates *cross-cloud* snapshot → patch → Nessus validation → ServiceNow closure in one workflow.

| Topic | Azure Update Manager | This AAP demo |
|-------|----------------------|---------------|
| Scope | Azure (+ Arc) | AWS + Azure in one workflow |
| Trigger | Schedules / Azure policy | Change-driven (ServiceNow) |
| Evidence | Update compliance in portal | Nessus re-scan + ticket attachment |
| ITSM | Integrations vary | ServiceNow as narrative spine |

Do not live-demo Azure portal during the 60-minute show — slides only.
