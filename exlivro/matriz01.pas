program ex01;

const maxLin = 50; maxCOl = 40;
type matriz = array [0..maxLin, 0..maxCol] of integer;
var w:matriz;

procedure readMatriz(var w:matriz);
var i, j: integer;

begin
	for i:= 1 to 50 do
		for j:= 1 to 10 do
			read(w[i,j]);
end;

begin
	readMatriz(w);
	write(w);
end.

