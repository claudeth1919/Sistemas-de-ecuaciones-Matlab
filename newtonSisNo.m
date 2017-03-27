function  [sol, iter, jac] = newtonSisNo (funciones, x0, tol, c)
    format long;
    i=0;
    jac = jacobian(funciones);
    vars =findsym(funciones);
    deltaX = x0;
    iter = [x0' 0] ;
    while norm(deltaX)> norm(x0) * tol && i < c
        fx0 = subs(funciones, vars, x0);
        dfx0 = subs(jac, vars, x0);
        deltaX = dfx0 \(-fx0);
        x0 = x0 + deltaX;
        i=i+1;
        iter =[iter; x0' norm(deltaX)];
    end
    if i< c
        sol = x0;
    else
        sol = 'No converge, no hay solucion';
    end
   
end