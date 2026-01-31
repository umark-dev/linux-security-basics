# Day 01 – Linux Users, Groups, and Permissions

## Objective

Understand how Linux controls access to files and directories using users, groups, and permission bits, and apply this knowledge in a secure, real-world setup.

---

## What I Did Today

* Reviewed how Linux identifies users and groups (`/etc/passwd`)
* Created a dedicated SOC user (`socuser`) and group (`soc`)
* Configured a restricted directory `/opt/soc-data`
* Applied least-privilege permissions using `chmod` and `chown`
* Tested access as a normal user and debugged permission failures
* Built a small Bash script to audit permissions automatically

---

## Key Concepts I Learned

### Users and Groups

* Every process in Linux runs as a user
* Files and directories have an **owner user** and an **owner group**
* Access is checked in this order:

  1. Owner
  2. Group
  3. Others

### Permissions

* `r` = read
* `w` = write
* `x` = execute
* Directories require **execute (`x`) permission** to be entered

Example:

```
drwxr-x---
```

* Owner: full access
* Group: read + execute
* Others: no access

---

## Why Permissions Matter in Security

Incorrect permissions are one of the most common causes of:

* Data leaks
* Privilege escalation
* Accidental exposure of sensitive files

In SOC and system roles, many incidents are traced back to **misconfigured access**, not advanced attacks.

---

## Mistake I Made (and Fixed)

I initially tried to write into `/opt/soc-data` as `socuser` and got a *permission denied* error.

**Root cause:**
The directory did not have write permission for the group.

**Fix:**
I corrected it using:

```bash
chmod 770 /opt/soc-data
```

instead of using unsafe permissions like `777`.

---

## Security Insight

Permissions are not for convenience.
They are part of the system’s security policy.

If a user has more access than required, that access can be abused by:

* Malicious insiders
* Compromised user accounts
* Exploited scripts or cron jobs

---

## Automation Output

Created a Bash script `perm_audit.sh` to:

* Display ownership
* Show permission details
* Quickly verify directory security

This kind of automation helps SOC analysts verify systems consistently and reduces human error.

---

## Interview Takeaway

I can explain **why** permissions are set a certain way, not just how to change them.
I understand how Linux enforces access and how misconfigurations lead to security incidents.

---

**Status:** ✅ Completed
**Artifacts:** screenshots, Bash script, secure directory configuration

---

