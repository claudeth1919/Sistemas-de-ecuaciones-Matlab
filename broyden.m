function broyden(x,funciones,n,tol)
    f = str2func(strcat('@(p)[',funciones,'];'));
    fr=zeros(n,1); it=0; xv=x';
    %Set initial Br
    Br=eye(n);
    fr=feval(f, xv);
    while norm(fr)>tol
      it=it+1;
      pr=-Br*fr;
      tau=1;
      xv1=xv+tau*pr; xv=xv1;
      oldfr=fr; fr=feval(f,xv);
      y=fr-oldfr; oldBr=Br;
      oyp=oldBr*y-pr; pB=pr'*oldBr;
      for i=1:n
        for j=1:n
          M(i,j)=oyp(i)*pB(j);
        end;
      end;
      Br=oldBr-M./(pr'*oldBr*y);
    end
    disp(xv);
    disp(it);
end