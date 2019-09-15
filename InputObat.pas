program Inputobat;
uses crt;

type 
	Det_Obat = 
		record
			nama : string[20];
			jenis : string[20];
			deskripsi : string[50];
			jumlah : integer;
		end;
var 
	obat : array[0..20] of Det_Obat;
	i : string;
	a : integer;
begin
	a := 0;
	i := 'Ada';
	repeat
		write('Masukan Nama Obat (Masukan 0 jika ingin berhenti) : ');
		read(i);
		if(i <> '0')then
		begin
			obat[a].nama := i;
			write('Masukan Deskripsi Obat : ');
			readln(obat[a].deskripsi);
			write('Masukan Jumlah Obat : ');
			readln(obat[a].jumlah);
		end;
	until(i = '0');
end.