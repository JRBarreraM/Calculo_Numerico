% SPLINE CUBICO

% Funcion que realiza una interpolacion polinomica a trozos

% Entrada: t = Vector con la cantidad de puntos a aproximar
%          x = Puntos que se aproximaran por Spline

% Salida: a = Coeficientes del polinomio aproximado por Spline Cubico
%         b = Coeficientes del polinomio aproximado por Spline Cubico
%         c = Coeficientes del polinomio aproximado por Spline Cubico
%         d = Coeficientes del polinomio aproximado por Spline Cubico

function [a,b,c,d] = splinecubico(t,x)
    n = length(t);
    A = zeros(n,n);
    A(1,1) = 1;
    A(1,2) = 0;
    A(n,n) = 0;
    A(n,n) = 1;
    a=x;
    for i=1:1:n-1;
        h(i) = t(i+1)-t(i);
    end
    j = 1;
    for i=2:1:n-1
        A(i,j) = h(i-1);
        A(i,j+1) = 2*(h(i-1)+h(i));
        A(i,j+2) = h(i);
        j = j+1;
        b(i) = ((3/h(i))*(a(i+1)-a(i)))-((3/h(i-1))*(a(i)-a(i-1)));
    end
    b(1) = 0;
    b(n) = 0;
    solucion = A\b';
    c = solucion';
    for j=1:1:n-1
        b(j) = ((a(j+1)-a(j))/h(j))-((h(j)/3)*(2*c(j)+c(j+1)));
        d(j) = (c(j+1)-c(j)/3*h(j));
    end
end
