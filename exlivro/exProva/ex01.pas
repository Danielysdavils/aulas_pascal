program ex01;
var n, ndiv, ndiv1, nMod, nMod1, count : longint;

begin
	readln(n);
	if(n > 0) then
	begin
		nDiv := n;
		while nDiv <> 0 do
		begin
			nMod:= nDiv div 10;
			nDiv:= nDiv div 10;
		end;
		nDiv1:= n;
		count:= 0;
		while nDiv1 <> 0 do
		begin
			nMod1:= nDiv1 div 10;
			nDiv1 := nDiv1 div 10;
			if nMod1 = nMod then
				count := count + 1;
		end;

		writeln('Existem ', count, 'digitos com o numero ', nMod);
	end
	else
		writeln('Digite um numero maior que zero')

end.
