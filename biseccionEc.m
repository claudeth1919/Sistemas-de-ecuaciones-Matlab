function biseccionEc (funcion, raiz_aprox, limite_superior,limite_inferior)
    syms x;
    y = funcion;
%     raiz_aprox=0;
    error=1212;
%     limite_superior=0;
%     limite_inferior=1;
    i = 0;
    formato = 'Iteracion: %d con raiz aprox de %.9f \n';
    while (abs(error)>0.0001)
        i = i +1;
        tabla(1,i) = i;
        tabla(2,i) = raiz_aprox;
        aux=raiz_aprox;
        raiz_aprox=(limite_inferior+limite_superior)/2;
        flimite_inferior=subs(y,limite_inferior); 
        fraiz_aprox=subs(y,raiz_aprox); 
        h=flimite_inferior*fraiz_aprox; 
        if (h<0)    
            limite_superior=raiz_aprox;
        elseif(h>0)
            limite_inferior=raiz_aprox;
        else
            error=0.0001;  
        end
        error=((raiz_aprox-aux)/raiz_aprox); 
        tabla(2,i) = raiz_aprox;
        fprintf(formato,tabla(1,i),tabla(2,i));
    end
    
end

