program funzioni_discesa;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type vettore=array[1..5]of integer;
var
vett:vettore;
count:integer;

procedure caricamento(var a:vettore);
var i:integer;
begin
for i:=1 to 5 do begin
writeln('Inserisci elemento ',i);
readln(a[i]);
end;
end;

function discese(a:vettore):integer;
var
i,count:integer;
begin
count:=0;
for i:=1 to 4 do begin
if a[i]>a[i+1] then
count:=count+1;
end;
discese:=count;
end;

begin
caricamento(vett);
count:=discese(vett);
writeln('Il numero di discese e'' ',count);
readln;
end.
