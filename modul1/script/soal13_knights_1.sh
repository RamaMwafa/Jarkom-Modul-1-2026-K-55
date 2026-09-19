#!/bin/bash
echo "=== Setup SSH Server di Knights (bagian 1) ==="

apt update
apt install openssh-server -y
service ssh start

useradd -m -s /bin/bash mika_admin
echo "mika_admin:mika_password" | chpasswd

echo "=== Status SSH ==="
ss -tulnp | grep 22

