#!/bin/bash

echo "=== Home SOC Lab Network Check ==="
echo

echo "[1] Hostname:"
hostname

echo
echo "[2] IP addresses:"
ip -br addr

echo
echo "[3] Routing table:"
ip route

echo
echo "[4] Kali connectivity:"
ping -c 3 192.168.56.102

echo
echo "[5] Network check completed."

