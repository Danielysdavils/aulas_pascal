program ex05;

var h1, h2, m1, m2, rh, rm : integer;

begin

  readln(h1, m1);
  readln(h2, m2);
  rh:= h1 + h2;
  rm:= m1 + m2;
  if rm >= 60 then
   begin
    rm:= rm - 60;
    rh:= rh + 1;
    writeln(h1,':',m1,'+', h2, ':', m2, '=', rh, ':', rm)
   end
  else if rh >= 24 then
   begin
     rh:= rh - 23;
     writeln(h1,':',m1,'+', h2, ':', m2, '=', rh, ':', rm);  
   end
  else if(rm >= 60) and (rh < 24) then 
    begin
      rm:= (rm - 60);
      rh:= (rh - 23);
      writeln(h1,':',m1,'+', h2, ':', m2, '=', rh, ':', rm); 
    end
  else
    writeln(h1,':',m1,'+', h2, ':', m2, '=', rh, ':', rm); 	 
end.
