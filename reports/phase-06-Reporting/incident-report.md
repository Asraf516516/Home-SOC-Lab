

# Home SOC Lab - Incident Report

## Incident Summary
A controlled network security assessment was performed in the Home SOC Lab environment.

## Environment
- Ubuntu VM: 192.168.56.101
- Kali VM: 192.168.56.102
- Network: 192.168.56.0/24
- Interface: eth0 on Kali, enp0s3 on Ubuntu

## Network Validation
ICMP connectivity between the Kali and Ubuntu virtual machines was verified successfully.

## Nmap Reconnaissance
An Nmap scan was performed against the lab network to identify reachable hosts and available services.

Evidence:
- `nmap_scan.txt`

## Packet Capture
ICMP traffic between Kali and Ubuntu was captured and reviewed using tcpdump.

Evidence:
- `logs/kali-ping.pcap`

The capture contained ICMP echo requests from Kali (192.168.56.102) to Ubuntu (192.168.56.101) and corresponding echo replies.

## Investigation
The observed traffic was generated within the authorized Home SOC Lab environment for security monitoring and investigation practice.

## Conclusion
The network connectivity, reconnaissance, packet capture, and investigation activities were successfully completed and documented.

## Evidence
- Nmap scan results
- ICMP packet capture
- Phase investigation documentation
- Screenshots