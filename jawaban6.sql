SELECT 
	mahasiswa.id AS nim,
	CONCAT_WS(" ", mahasiswa.first_name, mahasiswa.last_name) AS nama_mahasiswa,
	prodi.prodi_name,
	matakuliah.matkul_name,
	matakuliah.sks,
	matakuliah.matkul_room,
	matakuliah.matkul_time,
	CONCAT_WS(" ", dosen.first_name, dosen.last_name) AS nama_dosen
FROM mahasiswa
INNER JOIN perkuliahan ON mahasiswa.id = perkuliahan.nim
INNER JOIN dosen ON perkuliahan.dosen = dosen.id
INNER JOIN matakuliah ON perkuliahan.matkul = matakuliah.matkul_id
INNER JOIN prodi ON mahasiswa.prodi = prodi.id;