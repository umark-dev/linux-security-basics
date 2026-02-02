# Day 3 – Linux Processes and Services

## Objective

Understand how Linux manages running programs, how to monitor them, and how to control system services. This knowledge is essential for system administration and cybersecurity monitoring.

---

## What is a Process?

A process is any program that is currently running on a Linux system.
Every command or application you execute becomes a process.

Examples:

* Terminal shell
* Web server
* Background service
* Malware or suspicious script

Each process has:

* **PID** – Process ID
* **PPID** – Parent Process ID
* Owner user
* CPU and memory usage

---

## Viewing Processes

Common commands used to inspect processes:

### Show running processes

```bash
ps aux
```

This displays:

* user running the process
* process ID
* CPU and memory usage
* command name

### Real-time monitoring

```bash
top
```

Shows live resource usage and active processes.

### Process tree

```bash
pstree
```

Displays parent-child relationship of processes.

### Find a process by name

```bash
pgrep ssh
pidof bash
```

---

## Process States

Processes can be in different states:

| State | Meaning  |
| ----- | -------- |
| R     | Running  |
| S     | Sleeping |
| T     | Stopped  |
| Z     | Zombie   |

Zombie processes are finished processes waiting to be cleaned up.
Too many zombies can indicate system problems.

---

## Managing Processes

### Find current shell process

```bash
echo $$
```

### Create a test process

```bash
sleep 300
```

### Find it

```bash
ps aux | grep sleep
```

### Kill a process

Graceful termination:

```bash
kill PID
```

Force termination:

```bash
kill -9 PID
```

Kill by name:

```bash
pkill sleep
```

---

## Services in Linux

Services are long-running background processes managed by systemd.

### Check service status

```bash
systemctl status ssh
```

### Start a service

```bash
sudo systemctl start ssh
```

### Stop a service

```bash
sudo systemctl stop ssh
```

### Restart a service

```bash
sudo systemctl restart ssh
```

### Enable service on boot

```bash
sudo systemctl enable ssh
```

### Disable service on boot

```bash
sudo systemctl disable ssh
```

---

## Practical Learning Done Today

During today’s lab I performed:

* Used ps aux to inspect running processes
* Monitored system with top
* Created a process using sleep
* Located it using ps and grep
* Killed it successfully
* Explored process tree using pstree
* Managed a real service using systemctl
* Built an automation script to audit processes

---

## Security Perspective

In cybersecurity and SOC work, process monitoring is critical because:

* Malware often runs as hidden processes
* Attackers start unauthorized services
* High CPU usage can indicate compromise
* Unknown root processes are red flags

A security analyst must always check:

* Who started the process
* Is it expected on the system
* Does it consume abnormal resources
* Is it persistent after reboot

---

## Automation Script Created

File: `process_audit.sh`

This script helps quickly review:

* Top CPU consuming processes
* Top memory consuming processes
* List of active services

It acts as a basic SOC monitoring tool.

---

## Key Takeaways

* Everything running on Linux is a process
* Processes have owners and permissions
* Services are managed through systemctl
* Proper monitoring helps detect attacks
* Killing processes must be done carefully

---

## Questions I Can Now Answer

* What is PID and PPID?
* Difference between process and service?
* How to find a suspicious process?
* Difference between kill and kill -9?
* How to manage Linux services?

---

## Next Goal

Move to **Day 4 – Package Management and System Updates** to learn how software is installed, updated, and secured.

---
