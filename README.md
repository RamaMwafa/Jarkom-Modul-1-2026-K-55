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

Alice - Eiri
<img width="535" height="149" alt="image" src="https://github.com/user-attachments/assets/e4ea6c31-fe9e-4144-8986-6eb0872380cb" />

Mika - Alice


Mika - Chisa
<img width="575" height="150" alt="image" src="https://github.com/user-attachments/assets/732ee950-91ee-4040-acfb-493ea33eebf5" />

Mika - Knights

Soal 4: Kita diminta agar setiap client bisa melakukan ping 8.8.8.8 dan membuka domain web google.com

```
echo "nameserver 8.8.8.8" > /etc/resolv.conf
```
Hasil setelah melakukan `ping 8.8.8.8` dan `ping google.com`
Alice


Mika
<img width="645" height="380" alt="image" src="https://github.com/user-attachments/assets/51c7c9c9-3cc8-4095-a2b6-d6aca0a70234" />

Chisa
<img width="646" height="355" alt="image" src="https://github.com/user-attachments/assets/4925005e-26db-42de-bb44-4f81dc99ae47" />

Knights
<img width="654" height="307" alt="image" src="https://github.com/user-attachments/assets/b6dcccb6-7999-49c7-b29b-4bcc294baa47" />

Eiri

Mika - Eiri
<img width="536" height="201" alt="image" src="https://github.com/user-attachments/assets/7683f418-af92-40c1-a9af-f1f79e0e13ee" />


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

Soal 8: Pada soal ini kita diminta untuk login ke dalam ftp dengan node knights tetapi mneggunakan user alice

Soal 11: Pada soal 11 kita diminta membuktikan kelemahan protokol Telnet dengan membuat akun phantom_user dan password wired_ghost  pada layanan tenetd di node Chisa. Lalu melakukan login Telnet dari node Eiri ke node Chisa dan menangkap sesi menggunakan Wireshark.               

List paket Telnet dan Detail  1 paket Telnet                                   
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a1d7a2b3-9d25-4467-bf99-a0db6f1448d2" />                                                  
Gambar tersebut menunjukkan beberapa paket kecil yang terjadi dalam satu sesi login Telnet. Satu sesi login telnet menghasilkan puluhan paket keci, jauh lebih banyak dibandingkan jumlah karakter yang sebenarnya diktik pengguna. Di dalam detail satu paket tersebut juga terdapat satu huruf, hal ini dikarenakan telnet beroperasi dalam character mode, di mana setiap karakter yang diketik pengguna langsung dikirim sebagai paket data terpisah, tanpa menunggu input selesai. Hal ini terlihat dari paket individual yang hanya berisi satu byte data per paketnya.                                        
Follow TCP Stream                                       
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/70c0110d-efc8-45e9-bd36-ec5837ca3d43" />                         

Melalui fitur Follow TCP Stream, seluruh isi sesi Telnet dapat menjadi teks yang mudah dibaca, termasuk kredensial login (username: phantom_user, password: wired_ghost) yang terkirim tanpa enkripsi sama sekali. Ini membuktikan bahwa siapapun yang mampu menyadap trafik jaringan dapat langsung membaca kredensial pengguna tanpa perlu proses dekripsi. Walaupun pada hasil Follow TCP Stream, terlihat bahwa karakter-karakter username (phantom_user) muncul dua kali secara berurutan (misalnya "p" "p", "h" "h"), hal ini disebabkan oleh mekanisme remote echo pada Telnet, setiap karakter yang dikirim client akan dikirim balik oleh server agar tampil pada layar pengguna. Sebaliknya, karakter-karakter pada input password (wired_ghost) hanya muncul satu kali, karena sistem operasi pada sisi server menonaktifkan echo saat mode input password untuk mencegah password tampil di layar terminal. Namun demikian, penonaktifan echo ini hanya berlaku pada tampilan visual di layar client, sedangkan data password itu sendiri tetap dikirim dalam bentuk plaintext melalui jaringan dan dapat terbaca sepenuhnya oleh pihak yang melakukan penyadapan (sniffing), sebagaimana terlihat pada hasil capture.




