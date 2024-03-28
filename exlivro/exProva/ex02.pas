program ex01;
var i: longint;
    type nomes = array[1..10] of integer;

function procura_elemento_vetor(elemento, n:longint):longint;
var i : longint;	
begin
	
	for i = 1 to n do
	begin
		
		if nomes[i] == elemento
			procura_elemento_vetor = i
		else 
			procura_elemento_vetor = 0
	end;	
end;

procedure popula_matriz(n:longint)
var i, nV:longint;	

begin
	for i=1 to n do
	begin
		readln(nV);
		nomes[i] : nV;
	end;
end;

begin
	read(n);
	popula_matriz(n);	
	writeln(nomes);
	writeln('Qual elemento quer procurar?');
	readln(elemento);
	writeln('Seu elemento está na posição', procura_elemento_vetor(elemento, n), 'do vetor', nomes);
end.
