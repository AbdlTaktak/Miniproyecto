
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
	
	//introduccion de los diferentes criterios de divisibilidad usando como valores los dados en el enunciado (2,3,5,7,13)//
	if num1 mod 2=0 then 
	begin 
		textcolor(15);
		writeln('');
		writeln('----Su valor es divisible entre 2:'); textcolor(14);
		write('[',num1,']');
		writeln('');
	end;
	
		if num1 mod 3=0 then 
			begin 
				textcolor(15);
				writeln('');
				writeln('----Su valor es divisible entre 3:'); textcolor(1);
				write('[',num1,']');
				writeln('');
		end;
		
				if num1 mod 5=0 then
					begin 
						textcolor(15);
						writeln('');
						writeln('----Su valor es divisible entre 5:'); textcolor(4);
						writeln('[',num1,']');
						writeln('');
					end;
				
					 if num1 mod 7=0 then
						begin
							textcolor(15);
							writeln('');
							writeln('----Su valor es divisible entre 7:'); textcolor(2);
							writeln('[',num1,']');
							writeln('');
						end;
					
						 if num1 mod 13=0 then 
							begin 
								textcolor(15);
								writeln('');
								writeln('Su valor es divisible entre 13:'); textcolor(6);
								writeln('[',num1,']');
								writeln('');
							end;
END.

