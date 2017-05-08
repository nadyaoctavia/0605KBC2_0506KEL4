DOMAINS
daftar = string*
input = integer
nama,kelas=string
nim=integer
kelompok=anggota1(nama,nim,kelas);anggota2(nama,nim,kelas);anggota3(nama,nim,kelas)

FACTS
nondeterm cetak_daftar(daftar)
nondeterm data_kelompok(kelompok)

PREDICATES
nondeterm detail_data_kelompok
nondeterm credit
nondeterm pilih(input)
nondeterm pilih1
nondeterm pilih2
nondeterm pilih3
nondeterm panu(input)
nondeterm panuobat1
nondeterm panuobat2
nondeterm obatpanuorganik1
nondeterm obatpanuorganik2
nondeterm obatpanuorganik3
nondeterm obatpanunonorganik1
nondeterm obatpanunonorganik2
nondeterm obatpanunonorganik3
nondeterm solusipanu1(input)
nondeterm solusipanu2(input)
nondeterm kurap(input)
nondeterm kurapobat1
nondeterm kurapobat2
nondeterm obatkuraporganik1
nondeterm obatkuraporganik2
nondeterm obatkuraporganik3
nondeterm obatkurapnonorganik1
nondeterm obatkurapnonorganik2
nondeterm obatkurapnonorganik3
nondeterm solusikurap1(input)
nondeterm solusikurap2(input)
nondeterm jerawat(input)
nondeterm jerawatobat1
nondeterm jerawatobat2
nondeterm obatjerawatorganik1
nondeterm obatjerawatorganik2
nondeterm obatjerawatorganik3
nondeterm obatjerawatnonorganik1
nondeterm obatjerawatnonorganik2
nondeterm obatjerawatnonorganik3
nondeterm solusijerawat1(input)
nondeterm solusijerawat2(input)
nondeterm perulangan(input)
nondeterm perulangan1(input)
nondeterm perulangan2(input)
nondeterm perulangan3(input)
nondeterm perulangan4(input)
nondeterm perulangan5(input)
nondeterm perulangan6(input)
nondeterm perulangan7(input)
nondeterm perulangan8(input)
nondeterm perulangan9(input)
nondeterm perulangan10(input)
nondeterm perulangan11(input)
nondeterm perulangan12(input)
nondeterm perulangan13(input)
nondeterm perulangan14(input)
nondeterm perulangan15(input)
nondeterm perulangan16(input)
nondeterm perulangan17(input)
nondeterm lekassembuh
nondeterm tampil
rx(integer,integer)

CLAUSES
rx(Y,Y):- !.
rx(_,_):- fail.

detail_data_kelompok:-
data_kelompok(anggota1(A1,B1,C1)),
data_kelompok(anggota2(A2,B2,C2)),
data_kelompok(anggota3(A3,B3,C3)),
write(" \n\t\t\t----------------------------================ANGGOTA KELOMPOK================----------------------------  "),
write("\n\n\t\t\tNAMA : ",A1," \tNIM : ",B1," \t\t\tKELAS : ",C1),
write("\n\n\t\t\tNAMA : ",A2," \tNIM : ",B2," \t\t\tKELAS : ",C2),
write("\n\n\t\t\tNAMA : ",A3," \tNIM : ",B3," \t\t\tKELAS : ",C3),
write(" \n\n\t\t\t--------------------------------------================||||||||||||||||================--------------------------------------  "),
nl.

tampil:-	
write("\n"),
detail_data_kelompok,nl,
credit.

credit:-
write("\n"),
write("\n"),
write("\n"),
write("+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+\n\n"),
write("-------------------------------------------------------------"),
write("SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN OBAT PADA PENYAKIT KULIT"),
write("-------------------------------------------------------------\n\n"),
cetak_daftar([D1|[D2|[D3|_]]]),
write(D1,D2,D3),
write("\n"),
write("\tSilahkan Masukan Pilihan Keluhan Anda: "),
readint(P),pilih(P).

pilih(P):- rx(P,1),pilih1.
pilih(P):- rx(P,2),pilih2.
pilih(P):- rx(P,3),pilih3.
pilih(_):- credit.

pilih1:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT PADA PENYAKIT PANU"),
write("----------------------------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("\t\t1. Organik\n"),
write("\t\t2. Non Organik\n"),
write("\n"),
write("\tSilahkan Masukan Pilihan Anda: "),
readint(M),panu(M).

panu(M):- rx(M,1),panuobat1.
panu(M):- rx(M,2),panuobat2.
panu(_):- panuobat1.

panuobat1 :-	
write("\n"),
write("\n"),
write("---------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT ORGANIK PADA PENYAKIT PANU"),
write("---------------------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("\t\t1. Ramuan Obat Panu Daun Ketepeng China \n"),
write("\t\t2. Ramuan Obat Panu Bawang Putih.\n"),
write("\t\t3. Ramuan Obat Panu Bunga Melati\n"),
write("\n"),
write("\tSilahkan Masukan Ramuan Obat Pilihan Anda: "),
readint(P),solusipanu1(P).

solusipanu1(M):- rx(M,1),obatpanuorganik1.
solusipanu1(M):- rx(M,2),obatpanuorganik2.
solusipanu1(M):- rx(M,3),obatpanuorganik3.
solusipanu1(_):- obatpanuorganik1.

obatpanuorganik1:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("RAMUAN OBAT PANU DAUN KETEPENG CHINA"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 250.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Sebelum diminum, dihangatkan kembali ramuan tersebut"),nl,
write("\t\t3. Dikonsumsi setelah makan"),nl,
write("\n"),
write("\t\t*****************************************************"),
write("SOLUSI OBAT PANU"),
write("*****************************************************\n\n"),
write("\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dengan cara mandi minimal 2 kali sehari"),nl,
write("\t\t2. Gunakan pakaian Bersih yang menyerap keringat"),nl,
write("\t\t3. Dan Minum Ramuan Obat Panu Daun Ketepeng China"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'-------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan(A).

perulangan(A):- rx(A,1),credit.
perulangan(A):- rx(A,2),lekassembuh.
perulangan(_):- obatpanuorganik1.

obatpanuorganik2:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("RAMUAN OBAT PANU BAWANG PUTIH"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 200.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*****************************************************"),
write("SOLUSI OBAT PANU"),
write("************************************************\n\n"),
write("\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dengan cara mandi minimal 2 kali sehari"),nl,
write("\t\t2. Gunakan pakaian Bersih yang menyerap keringat"),nl,
write("\t\t3. Dan Minum  Ramuan Obat Panu Bawang Putih "),nl,
write("\n"),
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'-------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan1(A).

perulangan1(A):- rx(A,1),credit.
perulangan1(A):- rx(A,2),lekassembuh.
perulangan1(_):- obatpanuorganik2.

obatpanuorganik3:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("RAMUAN OBAT PANU BUNGA MELATI"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 150.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Sebelum diminum, dihangatkan kembali ramuan tersebut"),nl,
write("\t\t3. Dikonsumsi setelah makan"),nl,
write("\n"),
write("\t\t*****************************************************"),
write("SOLUSI OBAT PANU"),
write("************************************************\n\n"),
write("\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dengan cara mandi minimal 2 kali sehari"),nl,
write("\t\t2. Gunakan pakaian Bersih yang menyerap keringat"),nl,
write("\t\t3. Dan Minum  Ramuan Obat Panu Bunga Melati "),nl,
write("\n"),
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan2(A).

perulangan2(A):- rx(A,1),credit.
perulangan2(A):- rx(A,2),lekassembuh.
perulangan2(_):- obatpanuorganik3.


panuobat2 :-	
write("\n"),
write("\n"),
write("------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT NON ORGANIK PADA PENYAKIT PANU"),
write("---------------------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("\t\t1. Jelly Gamat Gold G. \n"),
write("\t\t2. Myicoral.\n"),
write("\t\t3. Kalpanax.\n"),
write("\n"),
write("\tSilahkan Masukan Obat Pilihan Anda: "),
readint(P),solusipanu2(P).

solusipanu2(M):- rx(M,1),obatpanunonorganik1.
solusipanu2(M):- rx(M,2),obatpanunonorganik2.
solusipanu2(M):- rx(M,3),obatpanunonorganik3.
solusipanu2(_):- obatpanunonorganik1.

obatpanunonorganik1:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("JELLY GAMAT GOLD G."),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 300.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi setelah makan"),nl,
write("\n"),
write("\t\t*****************************************************"),
write("SOLUSI OBAT PANU"),
write("************************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dengan cara mandi minimal 2 kali sehari"),nl,
write("\t\t2. Gunakan pakaian Bersih yang menyerap keringat"),nl,
write("\t\t3. Dan Minum Obat Jelly Gamat Gold G "),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan3(A).

perulangan3(A):- rx(A,1),credit.
perulangan3(A):- rx(A,2),lekassembuh.
perulangan3(_):- obatpanuorganik2.


obatpanunonorganik2:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("MYICORAL."),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 250.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*****************************************************"),
write("SOLUSI OBAT PANU"),
write("***************************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dengan cara mandi minimal 2 kali sehari"),nl,
write("\t\t2. Gunakan pakaian Bersih yang menyerap keringat"),nl,
write("\t\t3. Dan Minum Obat Myicoral "),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan4(A).
perulangan4(A):- rx(A,1),credit.

perulangan4(A):- rx(A,2),lekassembuh.
perulangan4(_):- obatpanuorganik2.


obatpanunonorganik3:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("KALPANAX."),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 100.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*****************************************************"),
write("SOLUSI OBAT PANU"),
write("***************************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dengan cara mandi minimal 2 kali sehari"),nl,
write("\t\t2. Gunakan pakaian Bersih yang menyerap keringat"),nl,
write("\t\t3. Dan Minum Obat KALPANAX "),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan5(A).
perulangan5(A):- rx(A,1),credit.
perulangan5(A):- rx(A,2),lekassembuh.
perulangan5(_):- obatpanuorganik2.


pilih2:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT PADA PENYAKIT KURAP"),
write("----------------------------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("\t\t1. Organik\n"),
write("\t\t2. Non Organik\n"),
write("\n"),
write("\tSilahkan Masukan Pilihan Anda: "),
readint(M), kurap(M).

kurap(M):- rx(M,1),kurapobat1.
kurap(M):- rx(M,2),kurapobat2.
kurap(_):- kurapobat1.

kurapobat1 :-	
write("\n"),
write("\n"),
write("---------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT ORGANIK PADA PENYAKIT KURAP"),
write("---------------------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("\t\t1. Ramuan Obat Kurap Lidah Buaya \n"),
write("\t\t2. Ramuan Obat Kurap Bawang Putih.\n"),
write("\t\t3. Ramuan Obat Kurap Lengkuas\n"),
write("\n"),
write("\tSilahkan Masukkan Ramuan Pilihan Anda: "),
readint(P),solusikurap1(P).

solusikurap1(M):- rx(M,1),obatkuraporganik1.
solusikurap1(M):- rx(M,2),obatkuraporganik2.
solusikurap1(M):- rx(M,3),obatkuraporganik3.
solusikurap1(_):- obatkuraporganik1.

obatkuraporganik1:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("RAMUAN OBAT KURAP LIDAH BUAYA"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 200.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*************************************************"),
write("SOLUSI PENYAKIT KURAP"),
write("********************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dan kuku"),nl,
write("\t\t2. Gunakan pakaian Bersih "),nl,
write("\t\t3. Dan Minum Ramuan Obat Kurap Lidah Buaya"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan6(A).

perulangan6(A):- rx(A,1),credit.
perulangan6(A):- rx(A,2),lekassembuh.
perulangan6(_):- obatkuraporganik1.

obatkuraporganik2:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("RAMUAN OBAT KURAP BAWANG PUTIH"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 100.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*************************************************"),
write("SOLUSI PENYAKIT KURAP"),
write("********************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dan kuku"),nl,
write("\t\t2. Gunakan pakaian Bersih "),nl,
write("\t\t3. Dan Minum  Ramuan Obat Kurap Bawang Putih"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan7(A).

perulangan7(A):- rx(A,1),credit.
perulangan7(A):- rx(A,2),lekassembuh.
perulangan7(_):- obatkuraporganik2.

obatkuraporganik3:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("RAMUAN OBAT KURAP LENGKUAS"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 100.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*************************************************"),
write("SOLUSI PENYAKIT KURAP"),
write("********************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dan kuku"),nl,
write("\t\t2. Gunakan pakaian Bersih "),nl,
write("\t\t3. Dan Minum  Ramuan Obat Kurap Lengkuas"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan8(A).

perulangan8(A):- rx(A,1),credit.
perulangan8(A):- rx(A,2),lekassembuh.
perulangan8(_):- obatkuraporganik3.

kurapobat2 :-	
write("\n"),
write("\n"),
write("---------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT NON ORGANIK PADA PENYAKIT KURAP"),
write("---------------------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("\t\t1. De Nature. \n"),
write("\t\t2. Tinea Corporis .\n"),
write("\t\t3. Miconazole.\n"),
write("\n"),
write("Silahkan Masukkan Obat Pilihan Anda : "),
readint(P),solusikurap2(P).

solusikurap2(M):- rx(M,1),obatkurapnonorganik1.
solusikurap2(M):- rx(M,2),obatkurapnonorganik2.
solusikurap2(M):- rx(M,3),obatkurapnonorganik3.
solusikurap2(_):- obatkurapnonorganik1.

obatkurapnonorganik1:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("DE NATURE."),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 200.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*************************************************"),
write("SOLUSI PENYAKIT KURAP"),
write("********************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dan kuku"),nl,
write("\t\t2. Gunakan pakaian Bersih "),nl,
write("\t\t3. Dan Minum Obat DE Nature"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan9(A).

perulangan9(A):- rx(A,1),credit.
perulangan9(A):- rx(A,2),lekassembuh.
perulangan9(_):- obatkurapnonorganik1.

obatkurapnonorganik2:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("TINEA CORPORIS"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 300.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*************************************************"),
write("SOLUSI PENYAKIT KURAP"),
write("********************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dan kuku"),nl,
write("\t\t2. Gunakan pakaian Bersih "),nl,
write("\t\t3. Dan Minum Obat Tinea Corporis"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan10(A).

perulangan10(A):- rx(A,1),credit.
perulangan10(A):- rx(A,2),lekassembuh.
perulangan10(_):- obatkurapnonorganik2.

obatkurapnonorganik3:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("MICONAZOLE"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 200.000,- &&&&&&&&\n\n"),
write("\t\t1. Minum 3x sehari(Pagi, Siang, Malam)"),nl,
write("\t\t2. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t*************************************************"),
write("SOLUSI PENYAKIT KURAP"),
write("********************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit dan kuku"),nl,
write("\t\t2. Gunakan pakaian Bersih "),nl,
write("\t\t3. Dan Minum Obat Miconazole"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan11(A).

perulangan11(A):- rx(A,1),credit.
perulangan11(A):- rx(A,2),lekassembuh.
perulangan11(_):- obatkurapnonorganik3.

pilih3:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT PADA JERAWAT"),
write("----------------------------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("\t\t1. Organik\n"),
write("\t\t2. Non Organik\n"),
write("\n"),
write("\tSilahkan Masukan Pilihan Anda: "),
readint(M),jerawat(M).

jerawat(M):- rx(M,1),jerawatobat1.
jerawat(M):- rx(M,2),jerawatobat2.
jerawat(_):- jerawatobat1.

jerawatobat1 :-	
write("\n"),
write("\n"),
write("-----------------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT ORGANIK PADA JERAWAT"),
write("-------------------------------------------------------------------------------------------\n\n"),
write("\t\t1. Ramuan Obat Lemon \n"),
write("\t\t2. Masker Alpukat dan Madu.\n"),
write("\t\t3. Ramuan Obat Minyak Pohon Teh\n"),
write("\n"),
write("\tSilahkan Masukan Ramuan Obat Pilihan Anda: "),
readint(P),solusijerawat1(P).

solusijerawat1(M):- rx(M,1),obatjerawatorganik1.
solusijerawat1(M):- rx(M,2),obatjerawatorganik2.
solusijerawat1(M):- rx(M,3),obatjerawatorganik3.
solusijerawat1(_):- obatjerawatorganik1.

obatjerawatorganik1:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("RAMUAN OBAT LEMON"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 300.000,- &&&&&&&&\n\n"),
write("\t\t1. Dikonsumsi sebelum tidur"),nl,
write("\n"),
write("\t\t*************************************************"),
write("SOLUSI JERAWAT"),
write("********************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit muka "),nl,
write("\t\t2. Gunakan bedak yang aman"),nl,
write("\t\t3. Dan diminum ramuan sebelum tidur"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan12(A).

perulangan12(A):- rx(A,1),credit.
perulangan12(A):- rx(A,2),lekassembuh.
perulangan12(_):- obatjerawatorganik1.

obatjerawatorganik2:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("MASKER ALPUKAT DAN MADU"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 300.000,- &&&&&&&&\n\n"),
write("\t\t1. Dikonsumsi sebelum tidur"),nl,
write("\n"),
write("\t\t*************************************************"),
write("SOLUSI JERAWAT"),
write("********************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit muka "),nl,
write("\t\t2. Gunakan bedak yang aman"),nl,
write("\t\t3. Dan Pakai masker alpukat dan madu sebelum tidur"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan13(A).
perulangan13(A):- rx(A,1),credit.
perulangan13(A):- rx(A,2),lekassembuh.
perulangan13(_):- obatjerawatorganik2.

obatjerawatorganik3:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("RAMUAN OBAT MINYAK POHON TEH"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 300.000,- &&&&&&&&\n\n"),
write("\t\t1. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t****************************************************"),
write("SOLUSI JERAWAT"),
write("*************************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit muka "),nl,
write("\t\t2. Gunakan bedak yang aman"),nl,
write("\t\t3. Dan minum ramuan sebelum tidur"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan14(A).
perulangan14(A):- rx(A,1),credit.
perulangan14(A):- rx(A,2),lekassembuh.
perulangan14(_):- obatjerawatorganik3.

jerawatobat2 :-	
write("\n"),
write("\n"),
write("---------------------------------------------------------------------------------------"),
write("PEMILIHAN OBAT NON ORGANIK PADA JERAWAT"),
write("---------------------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("\t\t1. MADRE. \n"),
write("\t\t2. MELILEA.\n"),
write("\t\t3. NATURE.\n"),
write("\n"),
write("\tSilahkan Masukan Ramuan Obat Pilihan Anda: "),
readint(P),solusijerawat2(P).

solusijerawat2(M):- rx(M,1),obatjerawatnonorganik1.
solusijerawat2(M):- rx(M,2),obatjerawatnonorganik2.
solusijerawat2(M):- rx(M,3),obatjerawatnonorganik3.
solusijerawat2(_):- obatjerawatnonorganik1.

obatjerawatnonorganik1:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("MADRE."),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 300.000,- &&&&&&&&\n\n"),
write("\t\t1. Diminum 3x sehari (pagi,siang,malam)"),nl,
write("\t\t1. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t****************************************************"),
write("SOLUSI JERAWAT"),
write("*************************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit muka "),nl,
write("\t\t2. Gunakan bedak yang aman"),nl,
write("\t\t3. Dan Minum obat MADRE"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan15(A).

perulangan15(A):- rx(A,1),credit.
perulangan15(A):- rx(A,2),lekassembuh.
perulangan15(_):- obatjerawatnonorganik1.

obatjerawatnonorganik2:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("MELILEA."),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 300.000,- &&&&&&&&\n\n"),
write("\t\t1. Diminum 3x sehari (pagi,siang,malam)"),nl,
write("\t\t1. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t****************************************************"),
write("SOLUSI JERAWAT"),
write("*************************************************\n\n"),
write("\t\t1. Selalu Menjaga Kebersihan kulit muka "),nl,
write("\t\t2. Gunakan bedak yang aman"),nl,
write("\t\t3. Dan Minum Obat MELILEA "),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan16(A).

perulangan16(A):- rx(A,1),credit.
perulangan16(A):- rx(A,2),lekassembuh.
perulangan16(_):- obatjerawatnonorganik2.

obatjerawatnonorganik3:-
write("\n"),
write("\n"),
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),
write("NATURE."),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"),
write ("\t\t&&&&&&& Harga : Rp 300.000,- &&&&&&&&\n\n"),
write("\t\t1. Diminum 3x sehari (pagi,siang,malam)"),nl,
write("\t\t1. Dikonsumsi sebelum makan"),nl,
write("\n"),
write("\t\t****************************************************"),
write("SOLUSI JERAWAT"),
write("*************************************************\n\n"),
write("1. Selalu Menjaga Kebersihan kulit muka "),nl,
write("2. Gunakan bedak yang aman"),nl,
write("3. Dan Minum Obat NATURE"),nl,
write("\n"),
write("\n"),
write("\t\t\t\t\t\t.--------------------------------------------------------.\n"),
write("\t\t\t\t\t\t|   Apakah anda ingin mengulang?   |"),
write("\n"),
write("\t\t\t\t\t\t|   1. Yes                                           |"), 
write("\n"),
write("\t\t\t\t\t\t|   2. No                                             |\n"),
write("\t\t\t\t\t\t'--------------------------------------------------------'"),
write("\n\t\t\t\t\t\t\t\t\t==>"),
readint(A),perulangan17(A).

perulangan17(A):- rx(A,1),credit.
perulangan17(A):- rx(A,2),lekassembuh.
perulangan17(_):- obatjerawatnonorganik3.

lekassembuh:-
write("\n"),
write("\n"),
write("\t\t\t\t=========================================================\n"),
write("\t\t\t\t=========================================================\n"),
write("\t\t\t\t=\t\t\tTERIMA KASIH\t\t\t=\n"),
write("\t\t\t\t=========================================================\n"),
write("\t\t\t\t=========================================================\n"),
write("\n"),
write("\n"),
write("+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+\n\n").


GOAL
consult("data.db"),
tampil.