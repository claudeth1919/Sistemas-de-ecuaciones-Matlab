function [x,k] = broyden(fcn1,fcn2,x0,maxits,tol)
if nargin < 5
    tol = 1e-8;
end
if nargin < 4
    maxits = 50;
end
if nargin < 3
    x0 = [1 1]';
end
if nargin < 2
    help broyden
    error('you must have at least two inputs')
end
syms x1 x2
B = [diff(fcn1,x1) diff(fcn1,x2);diff(fcn2,x1) diff(fcn2,x2)];
x1 = x0(1);
x2 = x0(2);
h = inline(fcn1,'x1','x2');
g = inline(fcn2,'x1','x2');
f(1:2,1) = [h(x1,x2);g(x1,x2)];
B = eval(B);
x = [x1 x2]';
for k=1:maxits
    s = B\(-f);
    x = x + s;
    fnew = [h(x(1),x(2));g(x(1),x(2))];
    y = fnew-f;
    if abs(fnew-f) < tol
        break
    end
    f = fnew;
    B = B + ((y-B*s)*s')/(s'*s);
end
