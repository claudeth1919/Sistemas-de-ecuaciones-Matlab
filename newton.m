function newton()
    syms x;
    y = cos(x)-x;
    x0 = 0;
    error =1212;
    i = 1;
    formato = 'Iteración: %d con raíz aprox de %.9f \n';

    while (abs(error)>0.00002)
        tabla(1,i) = i;
        aux = x0;
        raiz = x0 - (subs(y, x0) / subs(diff(y),x0));
        x0 = raiz;
        error=((raiz-aux)/raiz); 
        tabla(2,i) = raiz;
        fprintf(formato,tabla(1,i),tabla(2,i));
        i = i + 1;
    end
    disp(tabla);
end