program Pembelianobat;
uses crt;

var pembelian:string;
    resepObat:string;
    Obat:integer;
    database_obat:string;
begin
If pembelian = "resep" then
    writeln('masukan resep obat');
    readln(resepObat);
    if resepObat != database_obat then
    writeln('obat tidak ada');
Else
    writeln('pilih jenis obat');
    readln(Obat);
readln;
end;
