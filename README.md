# UTS_Basis_Data_RasyidAbdulRauf_20220801026

Projek ini mewakili sebuah sistem database sederhana untuk mengelola informasi tentang mahasiswa, dosen, mata kuliah, dan program studi di universitas. Database ini mencakup tabel-tabel berikut:

- **mahasiswa:** Informasi tentang mahasiswa
- **dosen:** Informasi tentang dosen
- **matakuliah:** Informasi tentang mata kuliah
- **prodi:** Informasi tentang program studi
- **perkuliahan:** Informasi tentang perkuliahan

## Deskripsi Tabel

### Mahasiswa

- `id`: ID mahasiswa (Primary Key)
- `first_name`: Nama depan mahasiswa
- `last_name`: Nama belakang mahasiswa
- `address`: Alamat mahasiswa
- `prodi`: ID program studi (Foreign Key mengacu prodi)

### Dosen

- `id`: ID dosen (Primary Key)
- `first_name`: Nama depan dosen
- `last_name`: Nama belakang dosen
- `matkul_dosen`: ID mata kuliah diajar oleh dosen (Foreign Key mengacu matakuliah)

### Matakuliah

- `matkul_id`: ID mata kuliah (Primary Key)
- `matkul_name`: Nama mata kuliah
- `sks`: Jumlah SKS mata kuliah
- `prodi`: ID program studi mata kuliah (Foreign Key mengacu prodi)
- `pengajar`: Nama pengajar mata kuliah
- `matkul_room`: Ruang mata kuliah
- `matkul_time`: Waktu mata kuliah

### Prodi

- `id`: ID program studi (Primary Key)
- `prodi_name`: Nama program studi

### Perkuliahan

- `nim`: ID mahasiswa (Foreign Key mengacu mahasiswa)
- `dosen`: ID dosen (Foreign Key mengacu dosen)
- `matkul`: ID mata kuliah (Foreign Key mengacu matakuliah)
- `prodi`: ID program studi (Foreign Key mengacu prodi)

## Data Contoh

Database dilengkapi dengan data contoh untuk tujuan demonstrasi:

### Mahasiswa

| id  | first_name | last_name    | address   | prodi |
|---- |------------|--------------|-----------|-------|
|1001 | Rasyid     | Abdul Rauf   | Tigaraksa | 1     |
|1002 | Bayu       | Sukmo Adji   | Legok     | 2     |
|1003 | Reza       | Dwi Putra    | Panongan  | 3     |

### Dosen

| id  | first_name | last_name | matkul_dosen |
|----|------------|-----------|--------------|
|2001| Sunupurwa  | Jefry     | 3001         |
|2002| Baddie     | Udin      | 3002         |
|2003| Dihin      | Septyanto  | 3003         |

### Matakuliah

| matkul_id | matkul_name          | sks | prodi | pengajar         | matkul_room | matkul_time    |
|-----------|----------------------|-----|-------|------------------|-------------|----------------|
|3001       | Basis Data           | 3   | 1     | Sunupurwa Jefry  | CR.A 401    | 10:00 - 12:30  |
|3002       | PBO                  | 3   | 2     | Baddie Udin      | CR.A 402    | 15:30 - 18:00  |
|3003       | Manajemen Keuangan   | 3   | 3     | Dihin Septyanto  | CR.A 501    | 07:30 - 10:00  |

### Prodi

| id | prodi_name         |
|----|---------------------|
|1   | Teknik Informatika |
|2   | Sistem Informasi   |
|3   | Manajemen          |

### Perkuliahan

| nim  | dosen | matkul | prodi |
|-----|-------|--------|-------|
|1001 | 2001  | 3001   | 1     |
|1002 | 2002  | 3002   | 2     |
|1003 | 2003  | 3003   | 3     |

## Query SQL

Anda dapat menggunakan query SQL berikut untuk mengambil informasi dari database:

- Menampilkan informasi tentang mahasiswa dan mata kuliah.
- Menampilkan informasi tentang dosen dan mata kuliah.
- Menampilkan informasi tentang mahasiswa, dosen dan mata kuliah.

## Instruksi untuk Menjalankan Kode

1. Jalankan skrip SQL untuk membuat tabel prodi dan memasukkan data prodi.
2. Jalankan skrip SQL untuk membuat tabel mata kuliah dan memasukkan data mata kuliah.
3. Jalankan skrip SQL untuk membuat tabel mahasiswa&dosen dan memasukkan data mahasiswa&dosen.
4. Jalankan skrip SQL untuk membuat tabel perkuliahan dan memasukkan data perkuliahan.
5. Jalankan query SQL yang disediakan untuk mengambil informasi dari database.
	- Menampilkan informasi tentang mahasiswa dan mata kuliah.
	- Menampilkan informasi tentang dosen dan mata kuliah.
	- Menampilkan informasi tentang mahasiswa, dosen dan mata kuliah.
