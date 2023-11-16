-- Insert Data Into Mahasiswa
INSERT INTO mahasiswa(id, first_name, last_name, address, prodi)
VALUES 
	(1001, 'Rasyid', 'Abdul Rauf', 'Tigaraksa', 1),
	(1002, 'Bayu', 'Sukmo Adji', 'Legok', 2),
	(1003, 'Reza', 'Dwi Putra', 'Panongan', 3);

-- Insert Data Into Dosen
INSERT INTO dosen(id, first_name, last_name, matkul_dosen)
VALUES
	(2001, 'Sunupurwa', 'Jefry', 3001),
	(2002, 'Baddie', 'Udin', 3002),
	(2003, 'Dihin', 'Septyanto', 3003);

-- Insert Data Into Mata Kuliah
INSERT INTO matakuliah(matkul_id, matkul_name, sks, prodi, pengajar, matkul_room, matkul_time)
VALUES 
	(3001, 'Basis Data', 3, 1,'Sunupurwa Jefry','CR.A 401', '10:00 - 12:30'),
	(3002, 'PBO', 3, 2,'Baddie Udin', 'CR.A 402', '15:30 - 18:00'),
	(3003, 'Manajemen Keuangan', 3, 3,'Dihin Septyanto', 'CR.A 501', '07:30 - 10:00');

-- Insert Data Into Prodi
INSERT INTO prodi(id, prodi_name)
VALUES 
	(1, 'Teknik Informatika'),
	(2, 'Sistem Informasi'),
	(3, 'Manajemen');
	
-- Insert Data Into Perkuliahan
INSERT INTO perkuliahan(nim, dosen, matkul, prodi)
VALUES 
	(1001, 2001, 3001, 1),
	(1002, 2002, 3002, 2),
	(1003, 2003, 3003, 3);