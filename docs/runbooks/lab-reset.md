# Lab reset (canned demo)

1. Revert VMs from cloud snapshots **or** re-run Terraform destroy/apply from golden state.
2. Re-apply "missing KB" staging if using pinned vulns (script TBD in Phase 2).
3. Re-open or clone ServiceNow change template `DEMO-PATCH-001`.
4. Confirm `patch_dry_run: false` only during intentional test runs.

Target reset time: **≤ 30 minutes**.
