clc;
clear;
format long;
disp('1.- Lineal');
disp('2.- No lineal');
op=input('Ingrese el tipo de ecuasion: ');
switch op
    case 1
        disp('1.- Metodo de jacobi');
        disp('2.- Metodo de LU');
        disp('3.- Metodo de Gaus-seidel');

        opcion=input('Ingrese el metodo que desee ocupar: ');

        switch opcion
           case 1
        %     matriz=input('ingrese la matriz de coeficiente A :'); broyden
        %     terminos_independientes=input('ingrese la matriz transpuesta de t�rminos independientes b (separado por comas o espacios) :\n');
        %     vector_aprox=input('ingrese un vector de aproximacion x=');
        %     num_it=input('ingrese el numero de iteracciones m=');
        %     precision=input('ingrese la precision buscada E');
              matriz = [3,2,1;5,3,4;1,1,-1];
              terminos_independientes =[1,2,1] ;
              vector_aprox=[0,0,0];
              num_it= 4;
              precision = 0.001;
              jacobi(matriz,terminos_independientes,vector_aprox,num_it,precision);
           case 2
        %        matriz=input('Ingrese la matriz A = \n');
        %        terminos_independientes=input('\nIngrese el vector b, correspondite a los terminos independientes b (separado por punto y coma): \n');
               matriz = [3,2,1;5,3,4;1,1,-1];
               terminos_independientes =[1;2;1];
               metodoLu(matriz,terminos_independientes);
           case 3
        %        matriz=input('Ingrese la matriz de coeficientes:\n ');
        %        terminos_independientes=input('\nIngrese los terminos independientes (Separados por punto y coma):\n ');
        %        vector_aprox=input('\nIngrese el vector con las aproximacimaciones Iniciales (Separados por punto y coma):\n ');
        %        num_it=input('\nIngrese el numero maximo de iteraciones:\n ');
        %        tol=input('\nIngrese la tolerancia:\n ');
        %        val_relajacion=input('\nIngrese el landa de la relajacion:\n ');
               matriz=[4 3 0; 3 4 -1;0 -1 4];
               terminos_independientes=[24;30;-24];
               vector_aprox=[0;0;0];
               num_it=50;
               tol=0.00001;
               val_relajacion=1.26;
               seidel(matriz,terminos_independientes,vector_aprox,num_it,tol,val_relajacion);
           otherwise
              disp('�sta opci�n no existe en el sistema');
        end
    case 2
        disp('1.- Metodo de Broyden');
        disp('2.- Newton Rapson');
        opcion=input('Ingrese el metodo que desee ocupar: ');
        
        switch opcion
            case 1
%                fun1=input('Ingrese la primra funcion como una string:\n ');
        %        fun2=input('Ingrese la segunda funcion como una string:\n  ');
        %        valores_posibles=input('\nIngrese el vector con las aproximacimaciones Iniciales (Separados por punto y coma):\n ');
        %        num_it=input('\nIngrese el numero maximo de iteraciones:\n ');
        %        tol=input('\nIngrese la tolerancia:\n ');
%                 broyden(fun1, fun2, valores_posibles, num_it,tol)
                broyden('x1* x2 -4', '(x1^2) + (x2^2) - 17', [1 5], 50, 1e-8)
            case 2
                newton()
            otherwise
                
        end
        
end        
