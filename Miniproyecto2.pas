// segundo ejercicio//
//en este caso rear un programa que permita imprimir un número ingresado por el usuario en un color específico si cumple con alguno de los siguientes parámetros, 2 (amarrillo), 3(azul),5(rojo), 7(verde), 13(marron)

program ejercicio2;

uses crt;
var 
// agregando una variable//
num1 : longint;
//inicindo el ejercicio 2 nuevamente para las correcciones//

	function divisibilidad (v1: LongInt):LongInt;
		begin
		if v1 mod 2=0 then
			begin
			WriteLn('Su valor es divisible entre 2:');
			textColor(yellow);WriteLn('[',v1,']');
			textcolor(white);
			WriteLn('--------------------------------------');
			end;
		
		if v1 mod 3=0 then
			begin
			WriteLn('Su valor es divisible entre 3:');
			textColor(blue);WriteLn('[',v1,']');
			textcolor(white);
			WriteLn('--------------------------------------');
			end; 
			
		if v1 mod 5=0 then
			begin
			WriteLn('Su valor es divisible entre 5:');
			textColor(red);WriteLn('[',v1,']');
			textcolor(white);
			WriteLn('--------------------------------------');
			end;
			
		if v1 mod 7=0 then
			begin
			WriteLn('Su valor es divisible entre 7:');
			textColor(green);WriteLn('[',v1,']');
			textcolor(white);
			WriteLn('--------------------------------------');
			end;
		if v1 mod 13=0 then
			begin
			WriteLn('Su valor es divisible entre 13:');
			textColor(brown);WriteLn('[',v1,']');
			textcolor(white);
			WriteLn('--------------------------------------');
			end;
		//introduciendo las diferentes posibilidades dentro de la funcion//
					if (v1 mod 2<>0) and (v1 mod 3<>0) and (v1 mod 5<>0) and (v1 mod 7<>0) and (v1 mod 13<>0) then
					writeln('Su valor no es divisible entre ninguno de los datos necesarios:','[',num1,']')
					end;
			//agregando la falta de coincidencia con los datos necesarios//
  
BEGIN
	clrscr();
	// en esta parte agregamos la pregunta para ingresar el dato//
	gotoxy(45,1);writeln('==============');
	gotoxy(45,2);writeln('Bienvenido sea');
	gotoxy(45,3);writeln('==============');
	write('Ingrese un numero mayor a cero para saber en que color se va a imprimir:');
	readln(num1);
	writeln('==============================================================================');
	while num1<=0 do
	begin
	writeln('Dato invalido, porfavor escoga un numero positivo y que sea mayor que cero');
	readln(num1);
	end;
	divisibilidad(num1);
	
			//agregando sentencia repetitiva para numeros menores he iguales que 0//
		writeln('');					
	textcolor(15);
	writeln('========================');
	writeln('///Que tenga buen dia///');
	writeln('========================');
	readln();
END.
//finalizando el programa agregando ahora si la funcion//

