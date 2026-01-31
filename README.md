# Linux Security Basics

## Overview

This repository contains executed Linux security fundamentals built through a structured, on-the-job training program designed to prepare for a **Junior SOC Analyst / IT Automation Engineer** role.

The work here focuses on **how Linux systems behave**, how security failures occur due to misconfiguration, and how to verify and document secure system states.
Nothing in this repository is theoretical or simulated without execution.

---

## What This Repository Proves

* Practical understanding of Linux access control and system behavior
* Ability to identify, explain, and fix insecure configurations
* Discipline in applying least-privilege principles
* Use of simple automation to validate security controls
* Clear technical documentation suitable for SOC and audit environments

---

## Execution Environment

* OS: Ubuntu Linux
* Shell: Bash
* Tooling: Native Linux utilities only
* Methodology: Execute → Verify → Document

---

## Repository Layout

```
linux-security-basics/
├── day01-linux-basics/
│   ├── notes.md
│   ├── perm_audit.sh
│   └── screenshots/
│
├── day02-permissions-ownership/
├── day03-processes-services/
├── day04-ssh-configuration/
├── day05-log-analysis/
└── README.md
```

Each daily directory contains:

* Commands that were actually run on a live system
* Observed system behavior and outcomes
* Intentional misconfigurations and proper remediation
* Security reasoning behind each decision
* Artifacts usable in technical interviews

---

## Core Topics Covered

* Linux users, groups, and ownership
* File and directory permissions
* Least-privilege access enforcement
* Process and service awareness
* Secure SSH configuration
* Authentication and system log analysis
* Bash scripting for security verification

---

## Day 01 Example: Users and Permissions

Work completed:

* Created dedicated users and groups
* Configured a restricted system directory
* Verified access failures and corrected them securely
* Implemented a Bash script to audit ownership and permissions

Security relevance:

* Prevents privilege escalation via writable system paths
* Reduces blast radius of compromised user accounts
* Mirrors common SOC findings during Linux incident investigations

---

## SOC and Operational Relevance

In production environments, many incidents stem from:

* Excessive permissions
* Poor user separation
* Lack of configuration validation

This repository demonstrates the ability to:

* Analyze Linux systems instead of guessing
* Enforce security intentionally, not reactively
* Verify system state using repeatable methods
* Communicate findings clearly and professionally

---

## How to Review This Repository

* Follow the days sequentially
* Read `notes.md` to understand decisions and mistakes
* Run scripts to reproduce validation steps
* Use documented scenarios to explain reasoning during interviews

---

## Project Status

This repository is actively maintained as part of a 4-month industry-readiness program.

Every commit represents **real execution and verification**, not copied examples.

---

## Author

**Muhammad Umar Naheed**
Junior SOC Analyst / IT Automation Engineer (in training)
Linux security, automation, and incident response focus

---
