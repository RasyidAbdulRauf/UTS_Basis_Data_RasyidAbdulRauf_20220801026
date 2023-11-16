-- Tabel Mahasiswa
CREATE TABLE mahasiswa (
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	prodi INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (prodi) REFERENCES prodi(id)
);

-- Tabel Dosen
CREATE TABLE dosen (
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	matkul_dosen INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (matkul_dosen) REFERENCES matakuliah(matkul_id)
);

-- Tabel Mata Kuliah
CREATE TABLE matakuliah (
	matkul_id INT NOT NULL,
	matkul_name VARCHAR(50) NOT NULL,
	sks INT NOT NULL,
	prodi INT NOT NULL,
	pengajar VARCHAR(50) NOT NULL,
	matkul_room VARCHAR(15) NOT NULL,
	matkul_time VARCHAR(15) NOT NULL,
	PRIMARY KEY (matkul_id),
	FOREIGN KEY (prodi) REFERENCES prodi(id)
);

-- Tabel Prodi
CREATE TABLE prodi (
	id INT NOT NULL,
	prodi_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

-- Tabel perkuliahan
CREATE TABLE perkuliahan (
    nim INT NOT NULL,
    dosen INT NOT NULL,
    matkul INT NOT NULL,
    prodi INT NOT NULL,
		PRIMARY KEY (nim),
		INDEX (dosen),
    INDEX (matkul),
    INDEX (prodi),
		FOREIGN KEY (nim) REFERENCES mahasiswa(id),
		FOREIGN KEY (dosen) REFERENCES dosen(id),
		FOREIGN KEY (matkul) REFERENCES matakuliah(matkul_id),
		FOREIGN KEY (prodi) REFERENCES prodi(id)
);