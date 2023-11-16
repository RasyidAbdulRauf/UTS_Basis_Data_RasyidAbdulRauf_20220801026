SELECT 
	mahasiswa.id AS nim,
	CONCAT_WS(" ", mahasiswa.first_name, mahasiswa.last_name) AS nama_mahasiswa,
	prodi.prodi_name,
	matakuliah.matkul_id,
	matakuliah.matkul_name,
	matakuliah.sks,
	matakuliah.pengajar,
	matakuliah.matkul_room,
	matakuliah.matkul_time
FROM mahasiswa
INNER JOIN perkuliahan ON perkuliahan.nim = mahasiswa.id
INNER JOIN matakuliah ON matakuliah.matkul_id = perkuliahan.matkul
INNER JOIN prodi ON prodi.id = mahasiswa.prodi;