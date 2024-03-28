program geraMatrizdosVizinhos;

type 
	matriz = array [0..100, 0..100] of integer;
var 
	w, z: matriz;
	soma, tamFinalL, tamFinalC, i, j : integer;

procedure populaMatriz(var w:matriz; tamFinalL, tamFinalC: integer);
var i, j:integer;

begin
	for i:=1 to tamFinalL do
	begin
		for j:=1 to tamFinalC do
			read(w[i,j]);
	end;
end;

procedure escreveMatriz(var w:matriz; tamFinalL, tamFinalC: integer);
var i, j :integer;

begin
	for i:=1 to tamFinalL do
	begin
		for j:=1 to tamFinalC do
			write(w[i,j]);

		writeln('');
	end;
end;

function valida(po1, po2:integer):boolean;
begin
	if((po1 >= 1) and (po1 <= tamFinalL)) and ((po2 >=1) and (po2 <= tamFinalC)) then
		valida:= true
	else
		valida:= false;   
end;

begin
	read(tamFinalL, tamFinalC);
	populaMatriz(w, tamFinalL, tamFinalC);
	escreveMatriz(w, tamFinalL, tamFinalC);
	soma:=0; i:=1; j:=1;
	while i <= tamFinalL do
	begin
		while j <= tamFinalC do
		begin	
			if (valida(i,j+1) and valida(i+1, j+1)) and valida(i+1, j) then
			begin
				writeln('posição:',i,j);	
				writeln('valores a somar:',w[i, j+1], w[i+1, j+1], w[i+1, j]);
				soma:= w[i, j+1] + w[i+1, j+1] + w[i+1, j];
				writeln('soma da po:', soma);				

				writeln('primera soma', soma);
				writeln(i);
				writeln(j);
				
				if valida(i-1, j) and valida(i-1, j+1) then
				begin
					write('segunda soma', soma);
					soma := w[i-1, j] + w[i-1, j+1];
				
					if (valida(i-1, j-1) and valida(i, j-1)) and valida(i+1, j-1) then
					begin
						write('tercera soma', soma);
						soma:= w[i-1, j-1] + w[i, j-1] + w[i+1, j-1];
					end;
				end;
			end;
			
			z[i,j]:=soma;
			j:=j+1;
			writeln('j com soma', j);
		end;
		i:=i+1;	
	end;
	writeln('resultado:');
	escreveMatriz(z, tamFinalL, tamFinalC);
end.
 
