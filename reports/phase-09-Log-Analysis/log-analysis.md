# Phase 09 — Authentication Log Analysis

## Objective

Analyze Ubuntu authentication logs for suspicious login activity and establish a baseline for normal authentication events.

## Evidence Source

- `/var/log/auth.log`
- SSH service journal

## Analysis Performed

Reviewed recent authentication log entries using:

```bash
sudo tail -n 30 /var/log/auth.log
