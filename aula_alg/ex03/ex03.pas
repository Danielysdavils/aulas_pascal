program ex03;

var n, iguais, ant, seq : longint;

begin
	read(n);
	seq:= 0;
	iguais:= 1;
	while n <> 0 do
	begin
		ant:= n;
		read(n);
		if (n <> ant) then
		begin
			iguais:= 1;
			if (n = 0) or (iguais > 1) then
			begin	
				seq:= seq + 1;
				writeln(seq);
			end
			else
				iguais:= 1;	 
		end	
		else
			iguais:= iguais + 1;		
	end;	
end.
