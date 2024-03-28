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
