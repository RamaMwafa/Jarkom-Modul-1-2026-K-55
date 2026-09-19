
#!/bin/bash
echo "=== Matikan Password Authentication (bagian 2) ==="

echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config
service ssh restart

echo "=== Verifikasi konfigurasi ==="
tail -5 /etc/ssh/sshd_config
ss -tulnp | grep 22



