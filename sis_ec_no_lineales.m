disp('1.- Metodo de Broyden');
disp('2.- Newton Rapson');
opcion=input('Ingrese el metodo que desee ocupar: ');

switch opcion
    case 1
%        funciones=input('Ingrese las funciones separadas por un (;) :\n  ');
%        cantidad_variables=input('\nIngrese el numero de varibles de las funciones:\n ');
%        terminos_independientes=input('\nIngrese los terminos independientes (Separados por una coma):\n ');
%        tol=input('\nIngrese la tolerancia:\n ');
       funciones='sin(p(1))+p(2)^2+log(p(3))-7; 3*p(1)+2^p(2)-p(3)^3+1;p(1)+p(2)+p(3)-5';
       cantidad_variables=3;
       terminos_independientes=[0 2 2];
       tol=0.00005;    
       broyden(terminos_independientes , funciones,cantidad_variables,tol);
    case 2
        newton()
    otherwise

end