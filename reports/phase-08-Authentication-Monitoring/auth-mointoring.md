# Home SOC Lab — Phase 08 Authentication Monitoring

## 1. Objective

This phase demonstrates basic monitoring of Linux authentication events using the Ubuntu authentication log.

## 2. Log Source

The authentication log analyzed was:

`/var/log/auth.log`

## 3. Detection Method

The following command was used to search for failed password authentication events:

`sudo grep -i "failed password" /var/log/auth.log | tail -10`

## 4. Observation

No actual SSH "Failed password" authentication events were identified in the returned results.

The displayed authentication-log entry represented the execution of the monitoring command itself through `sudo`, rather than a failed SSH login attempt.

## 5. Analysis

No unauthorized authentication attempt was confirmed from this search.

This demonstrates an important SOC principle: an authentication log entry should be interpreted in context rather than automatically classified as malicious.

## 6. Detection Concept

In a production environment, repeated failed SSH authentication attempts from the same source IP could indicate:

- Brute-force activity
- Credential guessing
- Unauthorized access attempts

Such activity would require further investigation.

## 7. Severity

**Informational**

No confirmed malicious authentication activity was identified during this check.

## 8. Recommended Response

If repeated failed authentication attempts are detected:

1. Identify the source IP address.
2. Count the number of failed attempts.
3. Check whether the source is authorized.
4. Review successful logins around the same time.
5. Investigate the affected account.
6. Escalate if suspicious activity is confirmed.

## 9. Conclusion

The Ubuntu authentication log was successfully queried for failed password events.

No confirmed failed SSH login activity was identified in the returned results. The exercise demonstrates a basic authentication-monitoring workflow for a SOC environment.
