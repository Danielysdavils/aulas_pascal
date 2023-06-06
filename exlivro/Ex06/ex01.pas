program ex01;

var n : longint;

function ehBinario(n : longint) : boolean;
var testeBin : boolean;
    nMod : longint;

begin
	testeBin:= true;
	while testeBin do
	begin
		nMod:= n mod 10;
		if (nMod <> 1) or (nMod <> 0) then
			testeBin := false
		else
			n:= n div 10;
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
