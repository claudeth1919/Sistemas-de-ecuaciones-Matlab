%BiseccionXo=input ('Colocar el primer numero del intervalo: ');X1=input ('Colocar el segundo numero del intervalo: ');Tol=input ('Indicar la tolerancia: ');Iter=input ('Cantidad de iteraciones que desea: ');Fun=input ('Indique la funcion entre comillas = ','s');F=inline (Fun);Yo=F(Xo);Y1=F(X1);if Yo==0    fprintf('Xo es raiz: ');else    if Y1==0        fprintf('X1 es raiz');    else        if Yo*Y1>0            fprintf('No existe raiz: ');        else            Xm=(Xo+X1)/2;            Ym=F(Xm);            Error=Tol+1;            Cont=1;            T=[Cont,Xo,X1,Xm,Ym,Error];            while Ym~=0 & Error>Tol & Cont<Iter                Auxiliar=Xm;%Auxiliar se utiliza para guardas un valor que luego se va a utilizar.                if Yo*Ym<0                    X1=Xm;                    Y1=Ym;                else                    Xo=Xm;                    Yo=Ym;                end                Xm=(Xo+X1)/2;                Ym=F(Xm);                Error=abs(Xm-Auxiliar);                Cont=Cont+1;                T(Cont,1)=Cont;                T(Cont,2)=Xo;                T(Cont,3)=X1;                T(Cont,4)=Xm;                T(Cont,5)=Ym;                T(Cont,6)=Error;            end            if Ym==0                fprintf('Xm es raiz: ');            else                if Error<Tol                   fprintf( 'Xm raíz=%g con error de %g : ',Xm,Error);                else                    fprintf('No hay raiz: ');                end            end            fprintf('Iteraciones  Xo  X1  Xm  Ym Error: ');            disp(T);        end    endend