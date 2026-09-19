  GNU nano 8.4                    soal_3_knights.sh
#!/bin/bash
echo "=== Pastikan Service SSH & HTTP aktif di Knights ==="

service ssh start

apt install nginx -y
service nginx start

echo "=== Status port 22 dan 80 (harus listen) ==="
ss -tulnp | grep -E ':22|:80'

echo "=== Pastikan port 7777 TIDAK listen ==="
ss -tulnp | grep 7777
