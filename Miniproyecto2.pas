
program ejercicio2;

uses crt;
var 
// agregando una variable//
num1 : integer;

BEGIN
	//inicindo el ejercicio 2//
	writeln('Bienvenido sea');
	write('Ingrese un numero mayor a cero para saber en que color se va a imprimir:');
	readln(num1);
	//agrego una repeticion para datos invalidos//
	while num1<=0 do
	begin
	writeln('Dato invalido, porfavor escoga un numero positivo y que sea mayor que cero');
	readln(num1);
	end;
	
END.

