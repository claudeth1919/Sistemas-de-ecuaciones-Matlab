function newtonEc (funcion, x0, tolerancia)
%     syms x;
    y = funcion;
    error =1212;
    i = 1;
    formato = 'Iteracion: %d con raiz aprox de %.9f \n';

    while (abs(error)>tolerancia)
        tabla(1,i) = i;
        aux = x0;
        raiz = x0 - (subs(y, x0) / subs(diff(y),x0));
        x0 = raiz;
        error=((raiz-aux)/raiz); 
        tabla(2,i) = raiz;
        fprintf(formato,tabla(1,i),tabla(2,i));
        i = i + 1;
    end
end