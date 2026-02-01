# Day 02 – chmod, chown, and umask

## Objective

Develop precise control over Linux file permissions and ownership using `chmod`, `chown`, and `umask`, and understand how these settings impact security and system behavior.

---

## What I Did Today

* Practiced changing permissions using numeric and symbolic modes
* Modified file and directory ownership with `chown`
* Tested permission failures and fixed them correctly
* Learned how `umask` controls default permissions
* Created a Bash script to generate permission reports

---

## Key Concepts Learned

### chmod – Changing Permissions

Permissions in Linux are controlled using two main methods:

**Numeric Mode**

* `chmod 755` → owner full, group read/execute, others read/execute
* `chmod 644` → owner read/write, group read, others read
* `chmod 600` → owner only
* `chmod 770` → owner and group full access

**Symbolic Mode**

* `chmod u+x file` → add execute for owner
* `chmod g-w file` → remove write from group
* `chmod o+r file` → add read for others

Numeric mode is faster and commonly used in automation. Symbolic mode is useful for small targeted changes.

---

### chown – Changing Ownership

* Ownership decides **who** the permissions apply to
* Format: `chown user:group file`
* Recursive changes: `chown -R user:group directory`

Correct ownership is as important as correct permissions. Many application failures happen because a file is owned by the wrong user.

---

### umask – Default Permission Control

* Files are created from base permission `666`
* Directories are created from base permission `777`
* `umask` subtracts from these values

Example:

* `umask 022` → files become `644`, directories `755`
* `umask 077` → files become `600`, directories `700`

This determines how secure new files are by default.

---

## Mistake I Made (and Fixed)

### Issue

I changed permissions on a file but still could not modify it.

### Root Cause

The file was owned by another user. I focused on `chmod` instead of checking ownership.

### Fix

Used:

```bash
sudo chown socuser:soc owned.txt
sudo chmod 660 owned.txt
```

This taught me that:

* Permissions alone do not grant access
* Ownership must be correct first

---

## Security Insights

* Using `chmod 777` is almost always a security problem, not a solution
* Least privilege should guide every permission decision
* Incorrect ownership can break applications even if permissions look correct
* `umask` is a silent but powerful security control

---

## Automation Work

Created a script `perm_report.sh` that:

* Displays current permissions
* Shows ownership details
* Helps verify configurations quickly

This type of automation reduces human error and is useful during incident investigations.

---

## Interview Takeaways

I can now clearly explain:

* The difference between 644 and 755
* Why ownership matters as much as permissions
* How umask affects new files
* How to troubleshoot access problems logically

---

## Conclusion

Today strengthened my ability to control Linux access properly instead of guessing. I learned to approach permission issues methodically: check ownership first, then permissions, then defaults.

---

**Status:** ✅ Completed
**Artifacts:** screenshots, Bash script, permission experiments

---
