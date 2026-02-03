# Day 4 – SSH Basics, Setup and Key Authentication

## Objective

Learn how SSH works, configure secure remote access, and implement key-based authentication instead of passwords.

---

## What is SSH

SSH stands for Secure Shell.
It is a protocol used to securely access and manage remote Linux systems over an encrypted connection.

### Main uses of SSH

* Remote server administration
* Secure command execution
* Secure file transfer
* Automation and scripting

SSH is the backbone of real-world Linux administration.

---

## SSH Service Basics

### Check SSH status

```bash
systemctl status ssh
```

### Start SSH service

```bash
sudo systemctl start ssh
```

### Enable SSH on boot

```bash
sudo systemctl enable ssh
```

### Default SSH Port

* SSH runs on port 22 by default.

---

## Connecting with SSH

Basic syntax:

```bash
ssh username@ip-address
```

Example:

```bash
ssh socuser@localhost
```

This connects to a remote system using password authentication.

---

## SSH Key Authentication

Passwords are weak and can be guessed or brute forced.
SSH keys provide a much stronger method.

### Components of SSH Keys

* Private Key: kept secret on client
* Public Key: stored on server

Authentication happens using cryptography instead of passwords.

---

## Creating SSH Keys

Generate key pair:

```bash
ssh-keygen
```

Default location:

```
~/.ssh/id_rsa
~/.ssh/id_rsa.pub
```

---

## Copy Public Key to Server

```bash
ssh-copy-id socuser@localhost
```

After this, login works without password:

```bash
ssh socuser@localhost
```

---

## Securing SSH Configuration

Important security settings in:

```
/etc/ssh/sshd_config
```

Recommended changes:

```
PermitRootLogin no
PasswordAuthentication no
```

Restart SSH after changes:

```bash
sudo systemctl restart ssh
```

Now only key-based login is allowed.

---

## Important SSH Log File

Authentication logs are stored in:

```
/var/log/auth.log
```

Check failed login attempts:

```bash
sudo grep "Failed password" /var/log/auth.log
```

This is critical for SOC monitoring.

---

## Security Risks in SSH

Common problems:

* Allowing root login
* Using only passwords
* Weak passwords
* Exposed private keys
* Open SSH to the internet

---

## Best Practices Learned Today

* Always prefer key authentication
* Disable root login
* Disable password authentication
* Monitor auth logs
* Protect private keys

---

## Automation Script Created

Created `ssh_audit.sh` to:

* Check SSH service status
* Verify SSH security settings
* Display failed login attempts

This script helps automate daily SSH security checks.

---

## What I Achieved Today

* Installed and configured SSH
* Connected to system using SSH
* Generated SSH key pair
* Configured passwordless login
* Hardened SSH configuration
* Analyzed SSH logs
* Created automation script

---

## Key Takeaway

SSH is not just a connection tool.
It is one of the most attacked services in Linux.
Proper SSH security is one of the first responsibilities of a SOC analyst and Linux engineer.

---
