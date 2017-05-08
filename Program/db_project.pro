DOMAINS
daftar = string*
nama,kelas = string
nim=integer
kelompok=anggota1(nama,nim,kelas);anggota2(nama,nim,kelas);anggota3(nama,nim,kelas)
FACTS
nondeterm cetak_daftar(daftar)
nondeterm data_kelompok(kelompok)
CLAUSES
data_kelompok(anggota1("EVI LOLITA APRIYANI",1515015128,"C'2015")).
data_kelompok(anggota2("KELVIN BRAMASTOVIC",1515015100,"C'2015")).
data_kelompok(anggota3("NADYA OCTAVIA ISLAMI",1515015100,"C'2015")).
cetak_daftar([
"\t\t1.Penyakit Panu \n",
"\t\t2. Penyakit Kurap\n",
"\t\t3. Jerawat\n"]).
GOAL
save("data.db"),
write("Telah tersimpan\n").