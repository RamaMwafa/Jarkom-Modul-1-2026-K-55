# Jarkom-Modul1-K55-2026

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


Mika - Eiri
<img width="536" height="201" alt="image" src="https://github.com/user-attachments/assets/7683f418-af92-40c1-a9af-f1f79e0e13ee" />



Soal 4: 
