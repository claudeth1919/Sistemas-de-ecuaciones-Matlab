function puntoFijoNo(funciones,x0, N)
    G=str2func(strcat('@(x)[',funciones,'];'));
    n = size(x0,1);
    if n == 1
       x0 = x0';
    end

    i = 1;
    y(:,1) = x0;
    tol = 1e-05;
    while i <= N
       y(:,i+1) = G(y(:,i));
       if abs(y(:,i+1)-y(:,i)) < tol		
          disp('El procedimiento fue exitoso con k iteraciones')
          k = i
          disp('Solucion iterada del sistema no linear')
          y = y'
          return
       end
       i = i+1;
    end

    if abs(y(:,i)-y(:,i-1)) > tol || i > N
       disp('El procedimiento fracaso')
       disp('La conficion |y(i+1)-y(i)| < tol no fue satisfecha')
       disp('Por favor examine la secuencia de iteraciones')
       disp('En caso de encontrar convergencia aumente la cantidad mac de iteraciones')
       disp('En caso de divergencia intente otra aproximacion inicial x0')
       y = y'
    end

end

