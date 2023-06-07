program ex01;
var n : longint;

function exponencial( b , e : longint) : longint;
var a, i : longint;
begin
	if e = 0 then
		exponencial:= 1
	else
	begin
		a:=1;
		for i:= 1 to e do a:= a * b;
		exponencial:= a;
	end;
end;

function toDecimal(n: longint) : longint;
var i, somaDec, nMod, dec : longint;
begin
	i:= 0;
	somaDec:= 0;
	while n<>0 do
	begin
		nMod:= n mod 10;
		n:= n div 10;
		dec:= nMod * exponencial(2, i);
		somaDec:= somaDec + dec;
		i:= i+1;
	end;
	toDecimal:= somaDec;
end;

begin
	readln(n);
	writeln(toDecimal(n));
end.


