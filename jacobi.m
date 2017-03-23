function x = jacobi(matriz, terminos_independientes, vector_aprox, num_it, precision)
    %resuelve un sistema de ecuaciones mediante el metodo de jacobi
%     A=input('ingrese la matriz de coeficiente A:');
%     b=input('ingrese la matriz transpuesta de términos independientes b=');
%     x=input('ingrese un vector de aproximacion x=');
%     m=input('ingrese el numero de iteracciones m=');
%     E=input('ingrese la precision buscada E');
    A=matriz;
    b=terminos_independientes;
    x=vector_aprox;
    m=num_it;
    E=precision;
    n=length(A);
    X=x;

    for k=1:m
        H=A*x';
        if abs(H-b')<E
            break
        end
        for i=1:n
            sum=0;
            for j=1:n
                if i~=j
                sum=sum+A(i,j)*x(j);
                end
            end
            U(i)=(b(i)-sum)/A(i,i);
        end
        for i=1:n
            x(i)=U(i);
        end
        if abs(X-x)<E
            break
        end
        X=x;
         fprintf('%d\t%d\n',k,x)
    end
    disp('La respuesta final es');
    disp(x);
end