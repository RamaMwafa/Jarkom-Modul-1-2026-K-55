#!/bin/bash
echo "=== Generate Key Pair & Copy ke Knights (Mika) ==="

rm -f ~/.ssh/id_ed25519 ~/.ssh/id_ed25519.pub ~/.ssh/known_hosts

ssh-keygen -t ed25519 -N "" -f ~/.ssh/id_ed25519

echo "=== Menyalin public key ke Knights (masukkan password: mika_password) ==="
ssh-copy-id mika_admin@10.91.3.2

echo "=== Verifikasi login TANPA password ==="
ssh mika_admin@10.91.3.2 "whoami; pwd"