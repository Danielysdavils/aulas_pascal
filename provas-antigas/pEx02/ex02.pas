program ex02;
var n1 : longint;

function testeBin(n1: longint):boolean;
var nMod: longint;
    nInt: boolean;

begin
	nMod:=0;
	nInt:= false;
	while (n1 <> 0) and (nInt = false) do
	begin
		nMod:= n1 mod 10;
		if (nMod <> 0) and (nMod<>1) then
			nInt := true
		else
			n1:= n1 div 10;
	end;
	testeBin:= not nInt; 
end;

begin
	readln(n1);
	if testeBin(n1) then
		writeln('sim')
	else
		writeln('não');
end.
