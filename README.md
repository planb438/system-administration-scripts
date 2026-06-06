[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-Ubuntu%2022.04%2B-lightgrey)](#)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-MicroK8s%20%7C%20kubeadm-blue)](#)
[![YouTube](https://img.shields.io/badge/YouTube-TechShorts-red)](https://www.youtube.com/@adaribain)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Adari%20Bain-blue)](https://www.linkedin.com/in/adari-bain-298924152/)

Complete README for system-administration-scripts
markdown
# 🛠️ System Administration Scripts

## 📋 Overview

A comprehensive collection of **Python, SQL, and Bash scripts** for system administration, monitoring, user management, and database maintenance in my Kubernetes homelab environment. These scripts automate routine tasks, provide visibility into system health, and streamline operations.

### 🎯 Purpose
- **Automate repetitive tasks** (backups, user management, log rotation)
- **Monitor system health** (CPU, memory, disk, network)
- **Database maintenance** (PostgreSQL optimization, backups, analytics)
- **AWS resource management** (EC2, S3, RDS operations)
- **Linux system administration** (user management, process monitoring)

### 📊 Script Categories

| Category | Count | Purpose |
|----------|-------|---------|
| **Linux Scripts** | 15+ | System monitoring, user management, log analysis |
| **AWS CLI Scripts** | 10+ | EC2, S3, RDS, IAM operations |
| **SQL Scripts** | 8+ | PostgreSQL maintenance, crime analytics |
| **Python Utilities** | 12+ | Automation, data processing, API integrations |




---

📝 Maintenance Tasks
---
Daily (Automated)
System health check

Failed login monitoring

Disk usage alert

Weekly
Log rotation and cleanup

Database VACUUM ANALYZE

Security audit

Backup verification

Monthly
User account audit

AWS cost review

Performance baseline review

Password rotation

🔐 Security Best Practices
Never commit secrets to this repository

Use environment variables for credentials

Encrypt sensitive data with GPG or Vault

Audit script executions in logs

Regularly update dependencies

📚 Makefile Commands
makefile
.PHONY: install test clean backup

install:
	chmod +x linux-scripts/**/*.sh
	chmod +x aws-cli-scripts/**/*.sh
	pip install -r requirements.txt

test:
	./linux-scripts/system-monitoring/system-health-report.sh
	python3 -m pytest python-scripts/tests/

backup:
	./backup-all.sh

clean:
	find . -name "*.log" -type f -delete
	find . -name "__pycache__" -type d -exec rm -rf {} +
🤝 Contributing
Feel free to add your own scripts following the existing structure:

Create script in appropriate directory

Add shebang line (#!/bin/bash or #!/usr/bin/env python3)

Include usage information

Test thoroughly

Update README with examples

📄 License
MIT License

👤 Author
Adari Bain - CKS Certified Kubernetes Security Specialist
