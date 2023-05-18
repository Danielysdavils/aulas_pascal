program ex02;

var maiorSeq, cont, num, ant : integer;

begin
	read(num);
	maiorSeq:= 0;
	cont:= 1;
	while num <> 0 do
	begin
		ant:= num;
		read(num);
		if (num <= ant) or (num = 0) then (* final seq *)
		begin
			writeln(cont);
			if cont > maiorSeq then
				maiorSeq:= cont;
			cont:= 1;				
		end
		else
			cont:= cont + 1; (* dentro da mesma subseq *)
	end;
	writeln(maiorSeq);
end.
