program ejercicio1;

uses crt;
var 
texto : string;
opcion, opciontexto, opciontraduccion: integer;
	// agregando las variables iniciales //
	
	//agregando el procedure del traductor a binario//
	procedure convertirbinario(texto1:string);
var
n1,ordi:integer;
begin
 
 //primero cambiando el texto a decimal utilizando la tabla ascii//
 for n1:= 1 to Length(texto1) do
 begin
 ordi:=ord(texto1[n1]);
 // seguidamente usando if entre las diferentes cantidades divisorias que se utilizan para su conversion//
  if ordi>=128 then 
  begin
  write('1');
  ordi:= ordi - 128;
  end
  
   else 
  Write('0');
  
    if ordi>=64 then
    begin
    write('1');
    ordi:= ordi - 64;
    end
    else 
  Write('0');
  
      if ordi>=32 then
      begin
      write('1');
      ordi:= ordi - 32;
      end
     else 
  Write('0')
  
         ; if ordi>=16 then
        begin
        write('1');
        ordi:= ordi - 16;
        end
        else 
  Write('0');
  
			if ordi>=8 then
          begin
          write('1');
          ordi:= ordi - 8;
          end
          else 
  Write('0');
  
            if ordi>=4 then
            begin
            write('1');
            ordi:= ordi - 4;
            end
            else 
  Write('0');
  
              if ordi>=2 then
              begin
              write('1');
              ordi:= ordi - 2;
              end
              else 
  Write('0');
  
                if ordi>=1 then
                begin
                write('1');
               
                ordi:= ordi - 1;
                end
  
                else 
                Write('0');
               
               write(' ');
  
  end;
  readln()
  
  
  end;
  //añadiendo el procedure del traductor a romano//
  procedure convertirromano(texto1:string);
var
n1,ordi, resto:integer;
begin
 
 for n1:= 1 to Length(texto1) do
 begin
 ordi:=ord(texto1[n1]);
 
 if ordi>=100 then 
 begin
 resto:= ordi - 100;
 write('C');
 ordi:= resto;
 end;
 if ordi>=100 then 
 begin
 resto:= ordi - 100;
 write('C');
 ordi:= resto;
 end;
 if ordi>=100 then 
 begin
 resto:= ordi - 100;
 write('C');
 ordi:= resto;
 end;
	
	if ordi>=90 then 
	begin
	resto:= ordi - 90;
	write('XC');
	ordi:= resto;
	end;
 
		if ordi>=50 then 
		begin
		resto:= ordi - 50;
		write('L');
		ordi:= resto;
		end;
 
 
			if ordi>=40 then 
			begin
			resto:= ordi - 40;
			write('XL');
			ordi:= resto;
			end;
 
				if ordi>=10 then 
				begin
				resto:= ordi - 10;
				write('X');
				ordi:= resto;
				end;
				if ordi>=10 then 
				begin
				resto:= ordi - 10;
				write('X');
				ordi:= resto;
				end;
				if ordi>=10 then 
				begin
				resto:= ordi - 10;
				write('X');
				ordi:= resto;
				end;
				if ordi>=9 then 
				begin
				resto:= ordi - 9;
				write('IX');
				ordi:= resto;
				end;
 
					if ordi>=5 then 
					begin
					resto:= ordi - 5;
					write('V');
					ordi:= resto;
					end;
					if ordi>=4 then 
					begin
					resto:= ordi - 4;
					write('IV');
					ordi:= resto;
					end;
 
						if ordi>=1 then 
						begin
						resto:= ordi - 1;
						write('I');
						ordi:= resto;
						end;
						if ordi>=1 then 
						begin
						resto:= ordi - 1;
						write('I');
						ordi:= resto;
						end;
						if ordi>=1 then 
						begin
						resto:= ordi - 1;
						write('I');
						ordi:= resto;
						end;


 write(' ');
 

 end;
end; 
//agregando el procedure del octal//
procedure convertiroctal(texto1:string);
var
n1,ordi, resto, val,valor1,valor2,valor3:integer;
begin
 
 
 for n1:= 1 to Length(texto) do
 begin
 val:= 1;
 ordi:=ord(texto[n1]);

 repeat  
resto:=ordi mod 8;
ordi:= ordi div 8;


			if val = 1 then
			valor1:= resto;
			if val = 2 then 
			valor2:= resto;
			if val = 3 then 
			valor3:= resto;

val:= val + 1;
until ordi<=0;
				if val = 4 then write(valor3, valor2, valor1, ' ');
				if val = 3 then write(valor2, valor1, ' ');
 end;
 
 write(' ');
 

 end;

BEGIN
//agrego de sentencia repetitiva desde el principio para crear un bucle//
repeat
// agregando estructurra basica del programa//
clrscr();
textcolor(green);
	gotoxy(43,1);writeln('==================');
	gotoxy(45,2);writeln('Bienvenido sea');
	gotoxy(43,3);writeln('==================');
	textcolor(white);
	

	write('Porfavor escriba alguna frase:');
	readln(texto);
	writeln('==================================');
	writeln('');
	
	repeat
	
	
	writeln('');
	writeln('En que desea que la frase sea transformada:');
	writeln('/ 1.- Binario');
	writeln('/// 2.- Octal');
	writeln('///// 3.- Hexadecimal');
	writeln('/////// 4.- Romanos');
	writeln('///////// 5.- Salir del programa');
	readln(opcion);
	//agregando un case para las distintas posibilidades //
	case opcion of 
	1:
	begin 
	//agregando el resultado del procedure a la primera posibilidad//
	clrscr;
	textcolor(green);
	gotoxy(45,1);writeln('=========================');
	gotoxy(45,2);writeln('Usted ha escogido binario');
	gotoxy(45,3);writeln('=========================');
	textcolor(white);
	writeln('------------------------------------------------------------------------');
	writeln('su resultado es:');
	convertirbinario(texto);
	write(' ');
	writeln('========================================================================');
	
	writeln('////Desea traducir el texto a otro codec? si(1) o no(2)////');
	readln(opciontraduccion);
	
	if opciontraduccion = 2 then 
	begin
		writeln('Desea traducir otro texto? si(1) o no(2)');
		readln(opciontexto);
	end;
	
	end;
	//agregaando el resultado del procedure de los romanos//
	2: 
	begin
	clrscr;
	textcolor(green);
	gotoxy(45,1);writeln('========================');
	gotoxy(45,2);writeln('Usted ha escogido octal');
	gotoxy(45,3);writeln('========================');
	textcolor(white);
	writeln('------------------------------------------------------------------------');
	writeln('su resultado es:');
	convertiroctal(texto);
	writeln(' ');
	writeln('========================================================================');
	
	writeln('////Desea traducir el texto a otro codec? si(1) o no(2)////');
	readln(opciontraduccion);
	
	if opciontraduccion = 2 then 
	begin
		writeln('////Desea traducir el texto a otro codec? si(1) o no(2)////');
		readln(opciontexto);
	end;
	
	
	//agregando los resulttados del procedure del octal//
	end; 
	3:
	begin
	clrscr;
	textcolor(green);
	gotoxy(45,1);writeln('=============================');
	gotoxy(45,2);writeln('Usted ha escogido Hexadecimal');
	gotoxy(45,3);writeln('=============================');
	textcolor(white);
	writeln('------------------------------------------------------------------------');
	writeln('su resultado es:');
	
	writeln(' ');
	writeln('========================================================================');
	
	writeln('////Desea traducir el texto a otro codec? si(1) o no(2)////');
	readln(opciontraduccion);
	
	if opciontraduccion = 2 then 
	begin
		writeln('////Desea traducir el texto a otro codec? si(1) o no(2)////');
		readln(opciontexto);
	end;
	
	
	end; 
	4: 
	begin
	clrscr;
	textcolor(green);
	gotoxy(45,1);writeln('========================');
	gotoxy(45,2);writeln('Usted ha escogido Romano');
	gotoxy(45,3);writeln('========================');
	textcolor(white);
	writeln('------------------------------------------------------------------------');
	writeln('su resultado es:');
	convertirromano(texto);
	writeln(' ');
	writeln('========================================================================');
	
	writeln('////Desea traducir el texto a otro codec? si(1) o no(2)////');
	readln(opciontraduccion);
	
	if opciontraduccion = 2 then 
	begin
		writeln('////Desea traducir el texto a otro codec? si(1) o no(2)////');
		readln(opciontexto);
	end;
	
	
	
	end;
	
	5:
	begin
	clrscr;
	gotoxy(45,1);writeln('========================');
	gotoxy(45,2);writeln('///Que tenga buen dia///');
	gotoxy(45,3);writeln('========================');
	read();
	
	opciontraduccion := 2;
	opciontexto := 2;
	end;
	end;
	
	until opciontraduccion = 2;
	
	until opciontexto = 2;
	begin
	clrscr;
	gotoxy(45,1);writeln('========================');
	gotoxy(45,2);writeln('///Que tenga buen dia///');
	gotoxy(45,3);writeln('========================');
	read();
	end;
END.

