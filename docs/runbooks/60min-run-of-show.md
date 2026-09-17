# 60-minute canned demo — run of show

| Time | Segment |
|------|---------|
| 0–10 | Architecture walkthrough |
| 10–15 | Azure Update Manager vs AAP (slide) |
| 15–20 | Pre-baked Nessus baseline (screenshot or export) |
| 20–25 | ServiceNow change (pre-created CHG) |
| 25–40 | **Live:** Launch AAP workflow — snapshot + patch AWS & Azure |
| 40–50 | Validation node + Nessus post-scan pass |
| 50–55 | ServiceNow closure |
| 55–60 | Q&A |

## Live launch

Controller → Workflows → `Demo-Windows-Patch-Lifecycle` → Launch

## Fallback

Keep `artifacts/` copies of before/after Nessus exports if scan API is slow.
