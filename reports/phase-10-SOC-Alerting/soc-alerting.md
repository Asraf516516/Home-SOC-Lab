# Phase 10 – SOC Alerting

## Objective

The objective of Phase 10 is to implement and document SOC alerting for the security monitoring system. The system identifies suspicious activities from collected logs and generates alerts for potential security incidents.

## Alerting Workflow

1. Collect security logs from monitored systems.
2. Parse and normalize the log data.
3. Detect suspicious events using predefined detection rules.
4. Classify the severity of the detected event.
5. Generate a SOC alert.
6. Record the alert for investigation and incident response.

## Alert Severity Levels

### Critical
Indicates a highly dangerous security event that requires immediate investigation.

Examples:
- Confirmed attack activity
- Multiple failed authentication attempts followed by successful login
- Privilege escalation
- Critical system compromise indicators

### High
Indicates a serious suspicious activity that should be investigated quickly.

Examples:
- Brute-force login attempts
- Repeated authentication failures
- Suspicious network activity
- Unauthorized access attempts

### Medium
Indicates potentially suspicious behavior that requires monitoring.

Examples:
- Unusual login activity
- Access from an unknown source
- Repeated connection failures

### Low
Indicates a minor security event or informational activity.

Examples:
- Normal authentication failures
- Routine security events
- Non-critical policy violations

## Example Detection Rules

| Rule | Detection | Severity |
|---|---|---|
| R001 | Multiple failed login attempts | High |
| R002 | Successful login after repeated failures | Critical |
| R003 | Unauthorized access attempt | High |
| R004 | Suspicious network connection | Medium |
| R005 | Normal authentication failure | Low |

## Alert Structure

Each generated SOC alert contains:

- Alert ID
- Timestamp
- Source IP address
- Destination IP address
- Event type
- Description
- Severity
- Detection rule
- Status

## Sample Alert

```text
Alert ID: SOC-001
Timestamp: 2026-08-21 19:30:00
Source IP: 192.168.1.105
Event Type: Brute Force Attempt
Description: Multiple failed authentication attempts detected.
Severity: HIGH
Detection Rule: R001
Status: OPEN
