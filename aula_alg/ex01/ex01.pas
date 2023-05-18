program sec;

var ant, num, cont,: integer;

begin

  read(num);
  maiorSeq:= 0;
  while num <> 0 do
  begin
    ant:= num;
    cont:= 1; 
    read(num);
    while (num <> 0) and (num > ant) do
    begin
       cont:= cont +1;
       ant:= num;
       read(num);
    end;
    if cont > maiorSeq then
          maiorSeq:= cont;
             
   end;
   writeln(maiorSeq);  
end.
