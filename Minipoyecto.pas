
program ejercicio1;

uses crt;
var 
texto : string;
num, opcion: integer;
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
  
begin
BEGIN
// agregando estructurra basica del programa//
	gotoxy(45,1);writeln('==============');
	gotoxy(45,2);writeln('Bienvenido sea');
	gotoxy(45,3);writeln('==============');
	
	

	write('Porfavor escriba alguna frase:');
	readln(texto);
	

	writeln('En que desea que la frase sea transformada');
	writeln('1.- Binario');
	writeln('2.- Octal');
	writeln('3.- Hexadecimal');
	writeln('4.- Romanos');
	writeln('5.- Salir del programa');
	readln(opcion);
	//agregando un case para las distintas posibilidades //
	case opcion of 
	1:
	begin 
	//agregando el resultado del procedure a la primera posibilidad//
	writeln('Usted ha escogido binario');
	convertirbinario(texto);
	end;
	
	
	5:
	begin
	clrscr;
	gotoxy(45,1);writeln('========================');
	gotoxy(45,2);writeln('///Que tenga buen dia///');
	gotoxy(45,3);writeln('========================');
	read();
	end;
	end;
	end;
END.

