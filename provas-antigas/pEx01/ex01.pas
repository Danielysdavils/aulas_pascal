program ex01;

var n1, n2, nT : longint;
    igual : boolean;

function eIgual (n1, n2: longint) : boolean;
begin
	if n1 = n2 then
		eIgual := true
	else
		eIgual := false;
end;

function inverte (n1 : longint) : longint;
var nMod, nFinal: longint;

begin
	nMod:= 0;
	nFinal:= 0;
	while n1 <> 0 do
	begin
		nMod:= n1 mod 10;
		n1:= n1 div 10;
		nFinal:= (nFinal * 10) + nMod; 
	end;
	inverte := nFinal;
end;

begin
	read(n1, n2);
	nT:= inverte(n1);
	igual := eIgual(nT, n2);

	if igual then
		writeln(nT, 'eh o contrario de ', n2)
	else
		writeln(nT, 'não eh o contrario de', n2)
end.


