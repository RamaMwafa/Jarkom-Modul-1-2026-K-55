# Jarkom-Modul1-K55-2026

## Anggota Kelompok
| Nama | NRP | 
|------|-----|
| M. Rama Maulana Wafa | 5027251019 |                                 
| Arjunina Maqbulin Usman | 5027251007 |  

### Soal 1 : Pada soal ini kita diminta untuk membuat topologi jaringan dengan keterangan, 1 router (Lain), 3 switch, 5 client (Alice, Mika, Chisa, knights, Eiri)

<img width="594" height="587" alt="image" src="https://github.com/user-attachments/assets/7f3c927e-4d20-45ac-a23c-74734833cf74" />

### Soal 2: kita diminta untuk mengkonfigurasi Lain agar dapat tersambung pada internet melalui NAT/DHCP pada interface eth0
```
auto eth0
iface eth0 inet dhcp
```

### Soal 3: Kita diminta untuk mengkonfigurasikan Lain setiap client agar bisa saling berkomunikasi dan terhubung

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

### Soal 4: Kita diminta agar setiap client bisa melakukan ping 8.8.8.8 dan membuka domain web google.com

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

### Soal 5: Pada soal ini kita diminta membuat script di dalam file `cek_status.sh` agar ketika restart konfigurasi jaringan tidak hilang

<img width="266" height="185" alt="image" src="https://github.com/user-attachments/assets/4342211b-372c-4fe0-b59d-e00e02dd2c07" />

### Soal 6: Pada soal ini kita perlu untuk melakukan packet sniffing menggunakan wireshark dengan menerapkan filter untuk menyaring paket berprotokol DNS dan ICMP dengan menjalankan sebuah file di node Mika

Pertama kita jalankan dulu file yang sudah disediakan

<img width="580" height="829" alt="image" src="https://github.com/user-attachments/assets/1355533f-a0de-44d8-b299-8280a2a634e7" />

Berikut adalah hasil display menggunakan wireshark

<img width="1920" height="897" alt="image" src="https://github.com/user-attachments/assets/73be16de-5ba2-4594-a1e6-793c00ef4bab" />

Kemudian kita diminta untuk menyaring paket yang berprotokol DNS dan ICMP dengan menggunakan display filter yang ada di wireshark

Protokol DNS

<img width="1920" height="405" alt="image" src="https://github.com/user-attachments/assets/001d302a-cd7a-4cd5-b07c-74ee9d5962f6" />

Protokol ICMP

<img width="1920" height="483" alt="image" src="https://github.com/user-attachments/assets/db75c470-820d-4770-bc0f-da3ad68185b7" />

Terdapat pula beberapa paket lainnya yang lolos, seperti `ICMPv6` dan `ARP`

### Soal 7: Chisa mendirikan server FTP dan membuat beberapa akun, seperti alice(read & write), mika(read only), dan eiri(blacklist). Lalu kita perlu membuktikan bahwa user alice dan eiri berjalan sesuai akses yang diberikan
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

### Soal 8: Pada soal ini kita diminta untuk login ke dalam ftp dengan node knights tetapi menggunakan user alice dan mengupload sebuah file kemudian menganalisis menggunakan wireshark

Pertama kita harus login terlebih dahulu ke ftp dengan node knights menggunakan akun alice. Kemudian kita coba upload sebuah file bernama `knights_report.txt` dan akan kita analisis menggunakan wireshark

<img width="644" height="340" alt="image" src="https://github.com/user-attachments/assets/2bcf030e-f75b-48fc-bd91-5b2b562fb9e0" />

### Soal 9: Pada soal ini kita diminta untuk membuktikan pembatasan read-only pada user Eiri di FTP server Chisa menggunakan akun Mika

Pertama kita login terlebih dahulu lewat node Eiri dan menggunakan akun milik Mika. Setelah itu kita login menggunakan akun mika di server ftp Chisa dan kita akan mencoba mengupload sebuah file `protocol7_manifest.txt` ke server ftp Chisa

<img width="501" height="211" alt="image" src="https://github.com/user-attachments/assets/5354aa75-e935-4d3e-9b01-4e0cdcf54feb" />

### Soal 10 : Pada soal ini kita diminta untuk menguji ketahanan koneksi ke server node Chisa

Pertama kita kirimkan request kepada Chisa dengan menggunakan command `ping -c 77 -s 128 -i 0.3 10.91.2.2` Dengan menggunakan node Knights. Command ini akan mengirim reqest ke Chisa sebanyak 77 paket yang nantinya akan kita analisis dengan wireshark

<img width="574" height="393" alt="image" src="https://github.com/user-attachments/assets/239804d8-df1e-42d2-9f8f-fe0c9b519bc4" />

Berikut hasilnya yang tertangkap oleh wireshark

<img width="1741" height="907" alt="image" src="https://github.com/user-attachments/assets/df8705d0-0970-467a-8f2b-73a1738824b5" />

Setelah itu kita diminta untuk menuliskan nilai ICMP type dan code untuk request dan reply

<img width="800" height="741" alt="image" src="https://github.com/user-attachments/assets/5c405684-cc1f-4825-81e0-531ef0c71745" />
<img width="803" height="658" alt="image" src="https://github.com/user-attachments/assets/a13925f8-ac68-4de5-8797-b907d01809f3" />

Dari gambar di atas dapat terlihat bahwa nilai ICMP untuk request adalah 8 dan codenya adalah 0. Sedangkan nilai ICMP untuk reply adalah 0 dan codenya juga 0

### 11. Membuktikan kelemahan protokol Telnet               

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
<img width="801" height="377" alt="image" src="https://github.com/user-attachments/assets/bbeb7f92-6b09-4ff4-896f-863c6e054300" />

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
<img width="735" height="563" alt="image" src="https://github.com/user-attachments/assets/cea0eb7a-4945-49ab-9277-2f4d019b6078" />

Setelah sesi selesai, capture dihentikan dan hasilnya dianalisis di Wireshark dengan menerapkan display filter `telnet` untuk hanya menampilkan trafik yang relevan. 


List paket Telnet dan Detail  1 paket Telnet                                   
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a1d7a2b3-9d25-4467-bf99-a0db6f1448d2" />  
Terlihat bahwa satu sesi login menghasilkan puluhan paket kecil berurutan. Hal ini terjadi karena Telnet beroperasi dalam **character mode**, bukan line mode — setiap karakter yang diketik pada keyboard langsung dikirim sebagai satu paket TCP terpisah pada saat itu juga, tanpa menunggu input selesai atau tombol Enter ditekan. Hal ini dirancang demikian agar interaksi terminal dapat berjalan secara real-time, sesuai spesifikasi *Network Virtual Terminal* (NVT) pada RFC 854. Terlihat bahwa payload data pada paket tersebut hanya berisi satu karakter tunggal, membuktikan bahwa setiap keystroke dikirim sebagai paket independen.
                                  
Follow TCP Stream                                       
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/70c0110d-efc8-45e9-bd36-ec5837ca3d43" />  
Dari hasil TCP Stream, terlihat jelas bahwa kredensial login (`phantom_user` sebagai username dan `wired_ghost` sebagai password) dapat dibaca secara langsung tanpa proses dekripsi apapun. Hal ini membuktikan bahwa Telnet tidak menyediakan mekanisme enkripsi sama sekali, sehingga siapapun yang mampu menyadap trafik jaringan dapat langsung memperoleh kredensial pengguna.

### 12. Pemindaian Port Menggunakan Netcat (Alice ke Knights)

Alice mencurigai Knights menjalankan beberapa layanan rahasia di node-nya. Untuk membuktikannya, dilakukan pemindaian port dari node Alice ke node Knights menggunakan Netcat, dengan target port 22 (SSH), 80 (HTTP), dan 7777 (port rahasia yang diduga tertutup).

Sebelum pemindaian dilakukan, dipastikan terlebih dahulu bahwa service SSH dan web server (nginx) sudah aktif berjalan pada node Knights:

```sh
service ssh start
apt install nginx -y
service nginx start
```

```sh
ss -tulnp | grep -E ':22|:80'
```                
<img width="806" height="272" alt="image" src="https://github.com/user-attachments/assets/0afa1705-4eaa-427a-9f1d-487a958d0e82" />

Hasil pengecekan menunjukkan port 22 dan port 80 dalam status `LISTEN`, sedangkan port 7777 tidak terdaftar sebagai port yang aktif mendengarkan (listening).

Selanjutnya, dari node Alice dilakukan pemindaian menggunakan Netcat terhadap ketiga port target, sambil packet capture diaktifkan pada link Switch1–Alice:

```sh
nc -zv 10.91.3.2 22
nc -zv 10.91.3.2 80
nc -zv 10.91.3.2 7777
```
Hasil scan pada terminal Alice menunjukkan perbedaan respons yang jelas antar port                             
<img width="808" height="133" alt="image" src="https://github.com/user-attachments/assets/9e1153ef-4dfe-4141-84a0-fd460fa804c1" />           

Hasil capture kemudian dianalisis di Wireshark untuk membandingkan flag TCP yang dikembalikan oleh Knights terhadap masing-masing percobaan koneksi.                        

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/d56aa922-61cd-4ee8-bfde-32d9d21faf45" />


Hasil capture kemudian dianalisis di Wireshark untuk membandingkan flag TCP yang dikembalikan oleh Knights terhadap masing-masing percobaan koneksi.

Knights membalas kedua paket `SYN` dari Alice dengan flag **`SYN, ACK`**, menandakan bahwa port 22 dan 80 dalam keadaan terbuka dan siap menerima koneksi. Pemeriksaan detail pada paket No. 4 (balasan untuk port 22) menunjukkan struktur flag sebagai berikut:                       
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b9153b21-9169-4d8b-9c20-82b18dc92841" />

Terlihat bahwa bit **SYN** dan **ACK** sama-sama bernilai *Set*, sesuai dengan tahap kedua dari proses *TCP three-way handshake* (`SYN` ke `SYN, ACK` ke `ACK`), yang menandakan adanya layanan aktif yang mendengarkan pada port tersebut.

**Port 7777 (Tertutup)**
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/5dc4b30e-839e-4d4a-99cb-38e6607114f0" />

Berbeda dengan dua port sebelumnya, Knights membalas paket `SYN` yang ditujukan ke port 7777 dengan flag **`RST, ACK`**. Pemeriksaan detail pada paket No. 15 menunjukkan struktur flag sebagai berikut:                
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/97870d75-9c1f-40fb-be39-5e52deaed1fe" />

Terlihat bahwa bit **RST** dan **ACK** sama-sama bernilai *Set*, dengan nilai *Window* sebesar 0 — menandakan bahwa server secara eksplisit menolak permintaan koneksi karena tidak terdapat proses atau layanan apapun yang terikat (*bound*) pada port tersebut, membuktikan port 7777 dalam keadaan tertutup.

| Port | Status yang diharapkan | Flag yang diterima | Bit yang aktif | Hasil |
|---|---|---|---|---|
| 22 (SSH) | Terbuka | SYN, ACK | SYN=1, ACK=1 | Sesuai |
| 80 (HTTP) | Terbuka | SYN, ACK | SYN=1, ACK=1 | Sesuai |
| 7777 (rahasia) | Tertutup | RST, ACK | RST=1, ACK=1 | Sesuai |

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
<img width="1182" height="540" alt="image" src="https://github.com/user-attachments/assets/25941bea-ab0b-4880-86f9-1c7a413fd8ed" />

Setelah public key berhasil disalin, dilakukan verifikasi login untuk memastikan autentikasi berbasis key sudah berfungsi sebelum password authentication dinonaktifkan:

```sh
ssh mika_admin@10.91.3.2
```           
<img width="1113" height="577" alt="image" src="https://github.com/user-attachments/assets/873a6595-8c62-45eb-95c8-6a9d07f00318" />             
<img width="735" height="238" alt="image" src="https://github.com/user-attachments/assets/d10cda20-0ba7-4bd7-ae3e-ee6ddb521389" />              

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
<img width="1060" height="578" alt="image" src="https://github.com/user-attachments/assets/5e7f1a95-d6f2-4858-b6c5-eaf320f06f85" />

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

### 14. Analisis Serangan Brute-Force pada Form Login Web (Eiri ke Alice)

Setelah gagal mengakses FTP, Eiri melancarkan serangan brute-force terhadap form login web milik Alice. Analisis dilakukan terhadap file capture `wired_bruteforce.pcapng` untuk mengidentifikasi pola serangan tersebut.

Langkah pertama adalah membuka file wired_bruteforce.pcapng yang telah disediakan soal melalui Wireshark                        
<img width="1538" height="861" alt="image" src="https://github.com/user-attachments/assets/fe66cce1-5093-4546-9a53-3e566e53fafb" />               
Dari gambar tersebut dapat dilihat bahwa terdapat interaksi antar IP 172.26.7.50 dengan IP 172.26.7.100, dalam gambar  IP 172.26.7.50 berusaha melakukan login, dan ditemukan bahwa Source Port adalah 49153 dan Destination Port adalah 8080.
<img width="1541" height="862" alt="image" src="https://github.com/user-attachments/assets/57c483f7-65f5-4fd0-ba21-073b62cb7046" />                        
Gambar tersebut menunjukkan bahwa IP 172.26.7.50 berhasil melakukan login, ditandai dengan kode `200 OK` dari IP 172.26.7.100. Dan ditemukan bahwa username nya adalah "lain_admin" dan password yang digunakan adalah "wired_pr0tocol_7".
<img width="1565" height="865" alt="image" src="https://github.com/user-attachments/assets/a3072d27-6990-4fb4-9711-0dc258eaceaf" />                         
Dari gambar diatas ditemukan bahwa server yang digunakan adalah Apache /2.4.62\r\n

Hasil Validasi temuan:                    
<img width="940" height="702" alt="image" src="https://github.com/user-attachments/assets/2a349dec-46e0-43e5-ad32-167bfafe40a7" />                           
| Temuan | Detail |
|---|---|
| IP Penyerang | 172.26.7.50 |
| IP Target | 172.26.7.100 |
| Source Port | 49153 |
| Destination Port | 8080 |
| Username | lain_admin |
| Password yang berhasil ditembus | wired_pr0tocol |
| Web Server | Apache/2.4.62 |

Flag yang ditemukan adalah: KOMJAR26{W1r3d_Brut3_cs0BHBvA3Vj8VGlrT78199kMo}

### 15. Identifikasi Pesan Rahasia dari USB Keystroke Capture
Melalui filter `usb.bDescriptorType == 1`, diperoleh Device Descriptor, perangkat USB yang terhubung.                        
<img width="1606" height="803" alt="image" src="https://github.com/user-attachments/assets/c5617370-2604-4f27-9204-7055ab68f214" />                        
Selanjutnya filter `usb.capdata` digunakan untuk menampilkan data transfer USB HID yang berisi keystroke.                       
<img width="1597" height="827" alt="image" src="https://github.com/user-attachments/assets/d35846e2-b445-4e85-82cf-ab9ea2dfb5f1" />                      
Dapat dilihat dari leftover Capture Data bahwa disitu terdapat sebuah kode, dan setiap paket terdapat kode-kode yang berbeda. Berikut adalah rangkuman dari seluruh kodenya:
```
02001a0000000000
0000000000000000
00000c0000000000
0000000000000000
0000150000000000
0000000000000000
0000080000000000
0000000000000000
0000070000000000
0000000000000000
02002d0000000000
0000000000000000
0200130000000000
0000000000000000
0000150000000000
0000000000000000
0000120000000000
0000000000000000
0000170000000000
0000000000000000
0000120000000000
0000000000000000
0000060000000000
0000000000000000
0000120000000000
0000000000000000
00000f0000000000
0000000000000000
02002d0000000000
0000000000000000
0000240000000000
0000000000000000
02002d0000000000
0000000000000000
00000c0000000000
0000000000000000
0000160000000000
0000000000000000
02002d0000000000
0000000000000000
0000040000000000
0000000000000000
00000f0000000000
0000000000000000
00000c0000000000
0000000000000000
0000190000000000
0000000000000000
0000080000000000
0000000000000000
02002d0000000000
0000000000000000
00001f0000000000
0000000000000000
0000270000000000
0000000000000000
00001f0000000000
0000000000000000
0000230000000000
0000000000000000
```
Hasil Validasi temuan:
<img width="1107" height="703" alt="image" src="https://github.com/user-attachments/assets/9770673e-2b88-4da5-9438-906eb86ca65b" />                               
| Temuan | Detail |
|---|---|
| Vendor ID | 0x046d (Logitech, Inc.) |
| Product ID | 0xc31c (Keyboard K120) |
| Alamat device | 2.7.1 (Bus 2, Device 7, Endpoint 1) |
| Pesan rahasia (setelah decode) | Wired_Protocol_7_is_alive_2026 |

Flag yang ditemukan: KOMJAR26{USB_K3ystr0k3_oKp1RLioObeUDZnMHOFXLcarZ}

### 16. Analisis Pencurian File Malware melalui FTP                            
<img width="1463" height="830" alt="image" src="https://github.com/user-attachments/assets/24c45076-cdac-401d-9475-a2a44a77c025" />                          
<img width="1627" height="867" alt="image" src="https://github.com/user-attachments/assets/0bc32314-bdfb-4822-8e93-8322df475ff1" />                                      
<img width="1626" height="862" alt="image" src="https://github.com/user-attachments/assets/bfca8a79-f59a-45a4-bd6a-8d6f278226cb" />                      
<img width="1520" height="852" alt="image" src="https://github.com/user-attachments/assets/8cf249c0-af6b-4ff9-a671-513202641e81" />            
<img width="1060" height="752" alt="image" src="https://github.com/user-attachments/assets/75496692-8550-496b-a4f2-640bf8c06b8d" />                      

| Temuan | Detail |
|---|---|
| IP Server FTP Penyerang | 198.51.100.7 |
| Banner Software FTP | vsftpd 3.0.5 |
| Username | knights_agent |
| Password | N4v1_s3cur3_2026 |
| Ukuran file malware `knights_payload.exe` | 524288 bytes |

Flag yang ditemukan: KOMJAR26{FTP_Th3ft_y2pITZMrnGbe0GkcM0jeohbSV}

### 17. Analisis Pengunduhan Malware melalui HTTP                               
<img width="1577" height="863" alt="image" src="https://github.com/user-attachments/assets/5e47d88e-61bf-4b01-aea7-d555cc8052ec" />                    
<img width="1571" height="846" alt="image" src="https://github.com/user-attachments/assets/cb35ce4b-a1cf-4d27-b872-f6c37306e0b3" />               
<img width="871" height="693" alt="image" src="https://github.com/user-attachments/assets/e30eb5fb-ec28-4609-84af-f48b431a03c8" />                    

| Temuan | Detail |
|---|---|
| Nama domain (Host) | wired-update.net |
| Alamat IP server penyerang | 203.0.113.42 |
| Nama file malware | navi_agent.exe |
| Status HTTP response | 200 |

Flag yang ditemukan: KOMJAR26{Navi_C2_D0wnl04d_p0iaTw6trAS4aRuYW7htdNcNf}

### 18. Analisis Transfer Malware melalui Protokol SMB2                                  
<img width="1588" height="853" alt="image" src="https://github.com/user-attachments/assets/c788966d-5fb0-4f9e-93f8-7e36675133d2" />                          

<img width="1222" height="702" alt="image" src="https://github.com/user-attachments/assets/18a31017-7192-46e7-93b6-a9f060cb1125" />             


| Temuan | Detail |
|---|---|
| Protokol yang dieksploitasi | SMB2 |
| IP Attacker | 10.7.3.100 |
| IP Victim | 10.7.1.50 |
| Folder tujuan penyimpanan | System32 |
| Nama file executable | wired_trojan_payload.exe |


### 19. Analisis Serangan Ekstorsi melalui Protokol SMTP
<img width="1512" height="848" alt="image" src="https://github.com/user-attachments/assets/0a80cb18-1f64-4507-ac06-741ee28cc3af" />                  
<img width="1513" height="837" alt="image" src="https://github.com/user-attachments/assets/5576e227-56e4-4498-a3e8-caa29cb9f942" />                       
<img width="1242" height="752" alt="image" src="https://github.com/user-attachments/assets/9aff12db-53ec-4c54-bde3-fc8513890ad6" />                    

| Temuan | Detail |
|---|---|
| Alamat email korban | victim@protocol7.co.jp |
| Password korban yang diklaim bocor | pr0tocol_7_user |
| Jenis malware yang diklaim | ransomware |
| Batas waktu pembayaran | 3 hari |
| MailClientID | 7719980706 |

### 20. Dekripsi Trafik TLS untuk Mengungkap Komunikasi Malware Tersembunyi
<img width="1596" height="857" alt="image" src="https://github.com/user-attachments/assets/4e7564b1-ad75-4909-b66a-601538db14bc" />                              
<img width="1591" height="856" alt="image" src="https://github.com/user-attachments/assets/bfe3055e-4fec-42e5-b51b-283f90fe31c9" />                           
<img width="1307" height="682" alt="image" src="https://github.com/user-attachments/assets/755786ff-2e5b-4870-842c-d8acaccd4b90" />                    

| Temuan | Detail |
|---|---|
| Versi protokol TLS yang dinegosiasikan | TLSv1.2 |
| Nama domain (SNI) yang diakses | example.com |
| Alamat IP server HTTPS penyerang | 93.184.216.34 |
| User-Agent yang digunakan | curl/7.62.0 |
| HTTP request method dan path tersembunyi | HEAD / |

