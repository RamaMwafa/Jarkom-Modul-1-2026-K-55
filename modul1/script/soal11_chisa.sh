#!/bin/bash
echo "=== Setup Telnet Server di Chisa ==="

apt update
apt install inetutils-telnetd xinetd -y

useradd -m -s /bin/bash phantom_user
echo "phantom_user:wired_ghost" | chpasswd

cat > /etc/xinetd.d/telnet << 'EOF'
service telnet
{
    disable = no
    flags = REUSE
    socket_type = stream
    wait = no
    user = root
    server = /usr/sbin/telnetd
    log_on_failure += USERID
}
EOF

service xinetd restart

echo "=== Status Telnet Server ==="
ss -tulnp | grep 23