Security and platform teams run patch cycles with manual handoffs: scan in one tool, change approval in ITSM, snapshots in cloud consoles, patch via separate mechanisms per cloud, validation scan again, status updates copied into tickets. Cloud-native patch tools reduce toil within one cloud but do not naturally compose Tenable findings + multi-cloud execution + ITSM closure under one policy engine.

This demo looks at how Red Hat Ansible Automation Platform 2.7 can be integrated with Vulnerability Assessment Scanners like Tenable Nessus and ITSM platforms like ServiceNow to determine and install the missing patches for Windows Servers.

Before I begin, I would like to give special thanks to @eanylin for his contributions to this project. This would not have been possible without his existing playbooks and repositories on Ansible.
