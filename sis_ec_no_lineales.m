disp('1.- Metodo de Broyden');
disp('2.- Newton Rapson');
disp('3.- Otro metodo quiza seidel');
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
%        funciones=input('Ingrese las funciones separadas por un (;) :\n  ');
%        x0=input('\nIngrese x0 los valores posibles :\n ');
%        cantidad_max_iter=input('\nIngrese la cantidad maxima de iteraciones:\n ');
%        tol=input('\nIngrese la tolerancia:\n ');
        syms x1 x2 x3;
        funciones = [x1^2+2*x2^2+exp(x1+x2) + x1*x3 - 6.1718 ; 10*x2+x2*x3 ; sin(x1*x3)+x2^2+x1-1.141 ];
        x0 =  [1;1;1];
        tol = 0.00001;
        cantidad_max_iter = 100;
        newtonSisNo(funciones, x0, tol, cantidad_max);
    case 3
        
    otherwise
        disp('No existe esa opcion');
end