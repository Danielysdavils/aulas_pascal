program ex02;

var a,b,c,d,e,f,x, div1, div2: real;

begin
  readln(a);
  readln(b);
  readln(c);
  readln(d);
  readln(e);
  readln(f);
  
  div1:= c-d;
  div2:= ((f/(a*b)) + e);
  if (div1 = 0) and (div2 = 0) then
    writeln('divisao invalida')
  else
    x:= ((((a+b)/div1) * e)/ div2);
    writeln(x); 
end.
