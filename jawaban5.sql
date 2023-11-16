SELECT 
	dosen.id AS kode_dosen,
	CONCAT_WS(" ", dosen.first_name, dosen.last_name) AS nama_dosen,
	dosen.matkul_dosen,
	matakuliah.sks,
	prodi.prodi_name,
	matakuliah.pengajar,
	matakuliah.matkul_room,
	matakuliah.matkul_time
FROM dosen
INNER JOIN matakuliah ON dosen.matkul_dosen = matakuliah.matkul_id
INNER JOIN prodi ON prodi.id = matakuliah.prodi;