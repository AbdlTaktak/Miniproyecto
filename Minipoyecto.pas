
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

	
END.

