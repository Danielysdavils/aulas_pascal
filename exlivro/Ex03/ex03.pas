program ex03;

var w,a,b,c,x, div1, res : real;

begin

 readln(x,a,b,c,x,w);
 w:= w*w;
 div1:= (a*(x*x)) + (b*x) + c;

 if div1 <> 0 then
  res:= (w/div1);
  writeln(res);
 
end.
