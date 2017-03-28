clc;
clear;
format long;

disp('1.- Sistemas de ecuaciones');
disp('2.- Ecuaciones');
opc=input('Ingrese el tipo de ecuasion: ');
switch opc
    case 1
        disp('1.- Lineal');
        disp('2.- No lineal');
        op=input('Ingrese el tipo de ecuasion: ');
        switch op
            case 1
               sis_ec_lineales;
            case 2
               sis_ec_no_lineales;   
        end  
    case 2
       ec_lineales;  
       
    otherwise
        disp('No existe esa opcion');
        menu
end        

      

