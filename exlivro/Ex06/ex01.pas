program ex01;

var n : longint;

function ehBinario(n : longint) : boolean;
var nMod : longint;
    testeBin : boolean;

begin
	testeBin := true; 
	while(n <> 0) or (testeBin = true) do
	begin
		nMod := n mod 10;
		writeln(nMod);
		if(nMod = 0) or (nMod = 1) then
		begin
			writeln('estou aqui');
			n:= n div 10;
			
		end
		else
		begin
			writeln('estouuuu aquiii');
			testeBin := false;
		end;
	end;
	ehBinario := testeBin;
end;

begin
	readln(n);
	if ehBinario(n) then
		writeln('sim')
	else
		writeln('nao');
end.
