<<<<<<< HEAD
program ler_e_imprimir_ao_contrario;

const min = 1; max = 200;
type vetor= array [min..max] of real;
var v: vetor ;
    n: integer;

procedure ler(var v: vetor ; var tam: integer);
var i : integer;
begin
            read (tam); 
            for i:= 1 to tam do
            read (v[ i ]);
end;

procedure imprimir_ao_contrario (var v: vetor ; tam: integer);
var i : integer;
begin
          for i:= tam downto 1 do
          write(v[i]:0:0);
end;
begin 
	ler (v, n);
	imprimir_ao_contrario (v, n) ;
end.
=======
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


>>>>>>> f90bc34a4545c644f974499adaaff9f3192996c8
