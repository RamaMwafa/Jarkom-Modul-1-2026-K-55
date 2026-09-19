#!/bin/bash
echo "=== Install Netcat di Alice ==="
apt install netcat-openbsd -y

echo "=== Scan port 22 (SSH - harus OPEN) ==="
nc -zv 10.91.3.2 22

echo "=== Scan port 80 (HTTP - harus OPEN) ==="
nc -zv 10.91.3.2 80

echo "=== Scan port 7777 (rahasia - harus CLOSED) ==="
nc -zv 10.91.3.2 7777