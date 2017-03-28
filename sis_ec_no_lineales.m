disp('1.- Metodo de Broyden');
disp('2.- Newton Rapson');
disp('3.- Punto fijo');
opcion=input('Ingrese el metodo que desee ocupar: ');

switch opcion
    case 1
%        funciones=input('Ingrese las funciones separadas por un (;) y entre comillas simples :\n  ');
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
 %        funciones=input('Ingrese las funciones separadas por un (;) y entre comillas simples :\n  ');
%         x0=input('\nIngrese x0 los valores posibles :\n ');
%         cantidad_max_iter=input('\nIngrese la cantidad maxima de iteraciones:\n ');
    funciones = '(1/3)*cos(x(2)*x(3))+1/6;   (1/9)*sqrt(x(1)^2 + sin(x(3)) + 1.06) - 0.1;   (-1/20)*exp(-x(1)*x(2)) - (10*pi - 3)/60';
    x0 =[ 0;0;0 ];
    cantidad_max_iter = 10;
    puntoFijoNo(funciones,x0,cantidad_max_iter );
    otherwise
        disp('No existe esa opcion');
        sis_ec_no_lineales
end