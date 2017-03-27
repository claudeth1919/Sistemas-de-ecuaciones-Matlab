syms x;
y = (x ^ 3) - (10 * x) - 5;
g = ((x^3)/10)-(1/2);
x0= 1;
error= 1212;
formato = 'Iteración: %d con raíz aprox de %.9f \n';
i =1;
while (abs(error)>0.00004)
    tabla(1,i) = i;
    raizAux = subs(g,x0);
    tabla(2,i) = raizAux;
    error = abs((raizAux-x0)/raizAux); 
    x0 = raizAux;
    fprintf(formato,tabla(1,i),tabla(2,i));
    i = i +1;
end
