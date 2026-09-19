# Jarkom-Modul1-K55-2026

## Anggota Kelompok
| Nama | NRP | 
|------|-----|
| M. Rama Maulana Wafa | 5027251019 |                                 
| Arjunina Maqbulin Usman | 5027251007 |  

Soal 1 : Pada soal ini kita diminta untuk membuat topologi jaringan dengan keterangan, 1 router (Lain), 3 switch, 5 client (Alice, Mika, Chisa, knights, Eiri)

<img width="594" height="587" alt="image" src="https://github.com/user-attachments/assets/7f3c927e-4d20-45ac-a23c-74734833cf74" />

Soal 2: kita diminta untuk mengkonfigurasi Lain agar dapat tersambung pada internet melalui NAT/DHCP pada interface eth0
```
auto eth0
iface eth0 inet dhcp
```

Soal 3: Kita diminta untuk mengkonfigurasikan Lain setiap client agar bisa saling berkomunikasi dan terhubung

Konfigurasi untuk router (Lain)
```
auto eth1
iface eth1 inet static
    address 10.91.1.1
    netmask 255.255.255.0

auto eth2
iface eth2 inet static
    address 10.91.2.1
    netmask 255.255.255.0

auto eth3
iface eth3 inet static
    address 10.91.3.1
    netmask 255.255.255.0
```
Hasil `ping google.com` dari Lain

<img width="642" height="197" alt="image" src="https://github.com/user-attachments/assets/0111e87b-ccb3-4fce-8aa8-22130b1c6fc7" />

Konfigurasi untuk setiap client
client 1 (alice)
```
auto eth0
iface eth0 inet static
    address 10.91.1.2
    netmask 255.255.255.0
    gateway 10.91.1.1
```

client 2 (mika)
```
auto eth0
iface eth0 inet static
    address 10.91.1.3
    netmask 255.255.255.0
    gateway 10.91.1.1
```

client 3 (chisa)
```
auto eth0
iface eth0 inet static
    address 10.91.2.2
    netmask 255.255.255.0
    gateway 10.91.1.2
```

client 4 (knights)
```
auto eth0
iface eth0 inet static
    address 10.91.3.2
    netmask 255.255.255.0
    gateway 10.91.1.3
```

client 5 (eiri)
```
auto eth0
iface eth0 inet static
    address 10.91.3.3
    netmask 255.255.255.0
    gateway 10.91.1.3
```

Hasil `ping` setiap client
Alice - Mika

<img width="523" height="150" alt="image" src="https://github.com/user-attachments/assets/3d544d21-19dc-4342-ac20-3021a90165c0" />

Alice - Chisa

<img width="546" height="146" alt="image" src="https://github.com/user-attachments/assets/2a0968cc-fde9-437e-9ce6-429bf2743d19" />

Alice - Knights

<img width="504" height="159" alt="image" src="https://github.com/user-attachments/assets/417c9d96-0bf2-456b-b42d-d6acce3dc0eb" />

Alice - Eiri

<img width="535" height="149" alt="image" src="https://github.com/user-attachments/assets/e4ea6c31-fe9e-4144-8986-6eb0872380cb" />

Mika - Alice

<img width="520" height="147" alt="image" src="https://github.com/user-attachments/assets/ce0beabc-6045-4926-ac26-3a1ad56bb067" />

Mika - Chisa

<img width="575" height="150" alt="image" src="https://github.com/user-attachments/assets/732ee950-91ee-4040-acfb-493ea33eebf5" />

Mika - Knights

<img width="526" height="149" alt="image" src="https://github.com/user-attachments/assets/f1a368ac-5727-4fd4-a8ce-da5ccf8068a5" />

Mika - Eiri

<img width="536" height="201" alt="image" src="https://github.com/user-attachments/assets/7683f418-af92-40c1-a9af-f1f79e0e13ee" />

Chisa - Alice

<img width="507" height="150" alt="image" src="https://github.com/user-attachments/assets/a88a6c69-121b-4876-9b84-df25a4144e2a" />

Chisa - Mika

<img width="509" height="157" alt="image" src="https://github.com/user-attachments/assets/7a2a0d28-3944-4d3c-9b78-c121674a3d0a" />

Chisa - Knights

<img width="509" height="149" alt="image" src="https://github.com/user-attachments/assets/7c5d97a7-805c-4424-bf66-9905d280f786" />

Chisa - Eiri

<img width="520" height="150" alt="image" src="https://github.com/user-attachments/assets/9832f78a-53b8-4cc0-bd57-c9a1268d6e0f" />

Knights - Alice

<img width="527" height="148" alt="image" src="https://github.com/user-attachments/assets/38d23009-25df-4735-9306-cfca7ec8ed9d" />

Knights - Mika

<img width="513" height="150" alt="image" src="https://github.com/user-attachments/assets/7c2e8b9b-c54f-4340-91a4-3e1774c14c77" />

Knights - Chisa

<img width="515" height="152" alt="image" src="https://github.com/user-attachments/assets/cceeab68-f9f7-49f6-9a50-277e89e0624f" />

Knights - Eiri

<img width="518" height="147" alt="image" src="https://github.com/user-attachments/assets/e10f2edc-4cbf-4802-aaef-5caf79fb85af" />

Eiri - Alice

<img width="506" height="144" alt="image" src="https://github.com/user-attachments/assets/35f0f0c2-4c22-4dcc-840e-ac3af54d33e9" />

Eiri - Mika

<img width="509" height="146" alt="image" src="https://github.com/user-attachments/assets/5a4bda0e-b1f1-40c6-b33f-c92589997c80" />

Eiri - Chisa

<img width="512" height="144" alt="image" src="https://github.com/user-attachments/assets/3a8f1dfc-89bd-460b-a1c8-a78fc4296809" />

Eiri - Knights

<img width="513" height="147" alt="image" src="https://github.com/user-attachments/assets/6b3d1f10-897c-4acf-b65d-7bb0b2b539d7" />

Soal 4: Kita diminta agar setiap client bisa melakukan ping 8.8.8.8 dan membuka domain web google.com

```
echo "nameserver 8.8.8.8" > /etc/resolv.conf
```
Hasil setelah melakukan `ping 8.8.8.8` dan `ping google.com`
Alice

<img width="644" height="359" alt="image" src="https://github.com/user-attachments/assets/1ca0c39b-a5e0-4a9d-a876-67761020fe9f" />

Mika

<img width="645" height="380" alt="image" src="https://github.com/user-attachments/assets/51c7c9c9-3cc8-4095-a2b6-d6aca0a70234" />

Chisa

<img width="646" height="355" alt="image" src="https://github.com/user-attachments/assets/4925005e-26db-42de-bb44-4f81dc99ae47" />

Knights

<img width="654" height="307" alt="image" src="https://github.com/user-attachments/assets/b6dcccb6-7999-49c7-b29b-4bcc294baa47" />

Eiri

<img width="642" height="341" alt="image" src="https://github.com/user-attachments/assets/443f85b4-2670-48c5-8ece-7c98c7547f26" />

Soal 5: Pada soal ini kita diminta membuat script di dalam file `cek_status.sh` agar ketika restart konfigurasi jaringan tidak hilang

<img width="266" height="185" alt="image" src="https://github.com/user-attachments/assets/4342211b-372c-4fe0-b59d-e00e02dd2c07" />

Soal 6: Pada soal ini kita perlu untuk melakukan packet sniffing menggunakan wireshark dengan menerapkan filter untuk menyaring paket berprotokol DNS dan ICMP

Soal 7: Chisa mendirikan server FTP dan membuat beberapa akun, seperti alice(read & write), mika(read only), dan eiri(blacklist). Lalu kita perlu membuktikan bahwa user alice dan eiri berjalan sesuai akses yang diberikan
Pertama kita update dan upgrade node Chisa
```
apt update & apt upgrade -y
```
lalu kita download vsftpd
```
apt install vsftpd -y
```
lalu kita buat folder yang diminta
```
mkdir -p /var/wired/data
```
kita tambahkan user sesuai yang ada di soal
```
useradd -m -s /bin/bash alice
useradd -m -s /bin/bash mika
useradd -m -s /bin/bash eiri
```
```
passwd alice
passwd mika
passwd eiri
```
```
chown alice:mika /var/wired/data
chmod 750 /var/wired/data
```
```
echo "eiri" > /etc/vsftpd.user_list
```
Lalu sesuaikan config yang ada dengan config berikut di dalam file `vsftpd.user_list`
```
listen=YES
local_enable=YES
write_enable=YES
listen_ipv6=NO
local_root=/var/wired/data
userlist_enable=YES
userlist_deny=YES
userlist_file=/etc/vsftpd.user_list
```
Ini adalah command untuk melakukan restart vsftpd
```
systemctl restart vsftpd
```
atau
```
service vsftpd restart
```
Ini adalah command untuk mengaktifkan vsftpd
```
service vsftpd start
```

Kemudian kita lakukan uji coba dengan login dengan akun alice kemudian memasukkan file `signal_alice.txt` dan mencoba membuktikan penolakan akses user eiri

pembuktian ftp alice 

<img width="313" height="161" alt="image" src="https://github.com/user-attachments/assets/f652992b-ff85-43ee-a49c-02099b3b8a72" />

pembuktian penolakan ftp eiri

<img width="238" height="133" alt="image" src="https://github.com/user-attachments/assets/a0479c5c-999c-4eba-8c9f-d40bac31d021" />

sukses login node knights dengan akun alice

<img width="313" height="167" alt="image" src="https://github.com/user-attachments/assets/9850338b-5201-480a-894b-7e887de3804d" />

bukti pembatasan user ftp eiri untuk upload file

<img width="575" height="323" alt="image" src="https://github.com/user-attachments/assets/937942e3-17a7-4a3f-b6bf-e563011f11dc" />

Soal 8: Pada soal ini kita diminta untuk login ke dalam ftp dengan node knights tetapi menggunakan user alice dan mengupload sebuah file kemudian menganalisis menggunakan wireshark

Pertama kita harus login terlebih dahulu ke ftp dengan node knights menggunakan akun alice


### Soal 11: Pada soal ini kita diminta membuktikan kelemahan protokol Telnet               

Untuk membuktikan kelemahan protokol Telnet dalam mengirimkan kredensial, dibuat sebuah akun uji coba dengan username `phantom_user` dengan pada node chisa, kemudian dilakukan proses login dari jarak jauh dari node Eiri menggunakan Telnet sambil melakukan packet sniffing menggunakan Wireshark.

Langkah pertama adalah melakukan instalasi Telnet server pada node Chisa Package yang digunakan adalah `inetutils-telnetd` beserta `xinetd` sebagai daemon yang menangani koneksi masuk
``` sh
apt update
apt install inetutils-telnetd  xinetd -y
```

Lanjut dengan membuat user `phantom_user` dengan password `wired_ghost`

```sh
useradd -m -s /bin/bash phantom_user
echo "phantom_user:wired_ghost" | chpasswd
```

Kemudian dilakukan koonfigurasi pada `/etc/xinetd.d/telnet` untuk mengaktifkan service Telnet dan mengarahkannya ke binary yang benar
```sh
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
```

Setelah konfigurasi selesai, service `xinetd` direstart agar perubahan dapat digunakan
```sh
service xinetd restart
```
Untuk memastikan Telnet server sudah berjalan dengan baik, dilakukan pengecekan port menggunakan 
```sh
ss - tulnp |  grep 23
```

Selanjutnya, dari node Eiri dilakukan instalasi Telnet client
```sh
apt install telnet -y
```

Setelah capture aktif, dilakukan koneksi Telnet dari Eiri menuju Chisa
Sebelum melakukan koneksi, capture packet dimulai terlebih dahulu pada link yang menghubungkan Eiri ke jaringan (Switch3–Eiri), agar seluruh proses handshake dan login dapat terekam sejak awal.                   
<img width="943" height="691" alt="image" src="https://github.com/user-attachments/assets/4a4516a1-9b9d-4b69-900c-a0333a752854" />
```sh
telnet 10.91.2.2
```

Login dilakukan menggunakan kredensial `phantom_user` / `wired_ghost`, dilanjutkan dengan menjalankan beberapa command sederhana (`whoami`, `pwd`) sebagai bukti sesi berjalan normal, sebelum akhirnya keluar dengan `exit`.

Setelah sesi selesai, capture dihentikan dan hasilnya dianalisis di Wireshark dengan menerapkan display filter `telnet` untuk hanya menampilkan trafik yang relevan.


List paket Telnet dan Detail  1 paket Telnet                                   
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a1d7a2b3-9d25-4467-bf99-a0db6f1448d2" />  
Terlihat bahwa satu sesi login menghasilkan puluhan paket kecil berurutan. Hal ini terjadi karena Telnet beroperasi dalam **character mode**, bukan line mode — setiap karakter yang diketik pada keyboard langsung dikirim sebagai satu paket TCP terpisah pada saat itu juga, tanpa menunggu input selesai atau tombol Enter ditekan. Hal ini dirancang demikian agar interaksi terminal dapat berjalan secara real-time, sesuai spesifikasi *Network Virtual Terminal* (NVT) pada RFC 854. Terlihat bahwa payload data pada paket tersebut hanya berisi satu karakter tunggal, membuktikan bahwa setiap keystroke dikirim sebagai paket independen.
                                  
Follow TCP Stream                                       
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/70c0110d-efc8-45e9-bd36-ec5837ca3d43" />  
Dari hasil TCP Stream, terlihat jelas bahwa kredensial login (`phantom_user` sebagai username dan `wired_ghost` sebagai password) dapat dibaca secara langsung tanpa proses dekripsi apapun. Hal ini membuktikan bahwa Telnet tidak menyediakan mekanisme enkripsi sama sekali, sehingga siapapun yang mampu menyadap trafik jaringan dapat langsung memperoleh kredensial pengguna.


### 13. Administrasi Jarak Jauh Aman Menggunakan SSH (Public Key Authentication)
Untuk mengamankan proses administrasi jarak jauh, dikonfigurasikan autentikasi SSH berbasis public key (tanpa password) dari node Mika menuju node Knights.

Langkah pertama adalah melakukan instalasi OpenSSH server pada node Knights:

```sh
apt update
apt install openssh-server -y
service ssh start
```

Kemudian dibuat user baru `mika_admin` sebagai target akun administrasi:

```sh
useradd -m -s /bin/bash mika_admin
echo "mika_admin:mika_password" | chpasswd
```

Selanjutnya, pada node Mika dilakukan pembuatan pasangan kunci SSH (key pair) menggunakan algoritma Ed25519:

```sh
ssh-keygen -t ed25519
```

Proses ini menghasilkan dua file: private key (`id_ed25519`) yang disimpan secara rahasia di Mika, dan public key (`id_ed25519.pub`) yang akan didistribusikan ke server.

Public key kemudian disalin ke Knights menggunakan `ssh-copy-id`:

```sh
ssh-copy-id mika_admin@10.91.3.2
```


Setelah public key berhasil disalin, dilakukan verifikasi login untuk memastikan autentikasi berbasis key sudah berfungsi sebelum password authentication dinonaktifkan:

```sh
ssh mika_admin@10.91.3.2
```

Login berhasil dilakukan tanpa diminta password, menandakan public key authentication sudah berjalan dengan benar.

Setelah terverifikasi, langkah selanjutnya adalah menonaktifkan password authentication pada Knights agar hanya public key yang dapat digunakan untuk login:

```sh
echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config
service ssh restart
```
Dengan konfigurasi ini, SSH server tidak akan pernah menawarkan opsi login menggunakan password, sehingga satu-satunya jalur masuk yang valid adalah melalui public key yang sudah terdaftar di `authorized_keys`.

Untuk keperluan analisis, capture packet dimulai pada link Switch1–Mika sebelum koneksi SSH dilakukan ulang:                       
<img width="942" height="682" alt="image" src="https://github.com/user-attachments/assets/14dc9784-10ba-446d-ad32-e91d6a54f486" />                   

```sh
ssh mika_admin@10.91.3.2
```

Hasil capture kemudian dianalisis di Wireshark dengan filter `ssh`.                            
<img width="1537" height="865" alt="image" src="https://github.com/user-attachments/assets/43c3534c-2d40-412f-b50c-a7b02dea0086" />                                 

Pada awal sesi, ditemukan paket **Protocol Version Exchange**, yaitu pertukaran informasi versi protokol antara client dan server   
Selanjutnya ditemukan paket **Key Exchange Init**, yang berisi daftar algoritma kriptografi yang ditawarkan masing-masing pihak                       
<img width="1697" height="870" alt="image" src="https://github.com/user-attachments/assets/c384fcb0-3902-407f-baf1-1ee0ba8c928e" />                          
Paket ini menunjukkan berbagai pilihan algoritma seperti `kex_algorithms` (mlkem768x25519-sha256, curve25519-sha256, dll), `encryption_algorithms` (chacha20-poly1305, aes256-gcm, dll), dan `mac_algorithms` untuk integritas data. Meskipun isi paket ini masih dapat dibaca, kontennya hanya berupa daftar kemampuan algoritma, bukan kredensial.                          
<img width="1543" height="868" alt="image" src="https://github.com/user-attachments/assets/1028bf6d-c20c-4707-93cc-bbfbf529c76a" />              
<img width="1571" height="871" alt="image" src="https://github.com/user-attachments/assets/91d559e9-b24d-4712-9dda-241d9f4905c0" />                                 

Berbeda dengan paket-paket sebelumnya, paket ini hanya berisi deretan data heksadesimal acak (ciphertext) tanpa informasi yang dapat dibaca langsung. Hal ini mencakup seluruh proses autentikasi public key maupun isi sesi (`whoami`, `pwd`) yang dijalankan setelahnya.

Kredensial tidak terlihat dalam bentuk plaintext seperti pada sesi Telnet karena dua alasan utama, yaitu Enkripsi end-to-end diaktifkan sejak awal sesi dan Public key authentication tidak pernah mengirimkan private key melalui jaringan.

