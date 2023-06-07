(* Faça uma função em Pascal que receba como parâmetro um número inteiro e
teste se ele é um número binário. Se ele for binário, imprima sim senão imprima
nao. *)

program ex01;

var n : longint;

function ehBinario(n : longint) : boolean;
var testeBin : boolean;
    nMod: longint;

begin
	testeBin := true;
	while (n <> 0) and (testeBin) do
	begin
		nMod:= n mod 10;
		if (nMod <> 1) and (nMod <> 0) then
			testeBin := false
		else
			n:= n div 10;
	end;
	ehBinario := testeBin;
end;	
begin
	readln(n);
	if ehBinario(n) then
		writeln('E sim')
	else
		writeln('nao');
end.
