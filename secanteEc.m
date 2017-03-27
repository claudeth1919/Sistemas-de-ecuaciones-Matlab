function secanteEc (funcion, raiz0, raiz1)
%     syms x;
%     y = x * log(x)- 10;
    
%     raiz0=8;
%     raiz1=9;
    y=funcion;
    error = 1212; 
    formato = 'Iteraci?n: %d con ra?z aprox de %.9f \n';
    i =1;
    while error>0.00001 
        tabla(1,i) = i;
        raizAux=raiz1-(( subs(y,raiz1)*(raiz0-raiz1) )/( subs(y,raiz0)-subs(y,raiz1) )); 
        tabla(2,i) = raizAux;
        error = abs((raizAux-raiz1)/raizAux);   
        raiz0 = raiz1;
        raiz1 = raizAux;
        fprintf(formato,tabla(1,i),tabla(2,i));
        i = i +1;
    end
end