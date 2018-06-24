% Polinomio de Taylor

% Funcion del calculo del polinomio de taylor para una determinada ecuacion

% Entrada: ecuacion = funcion a aproximar
%          x        = variable a usar
%          a        = punto a aproximar
%          n        = sumandos del polinomio

% Salida: aproximacion = polinomio aproximado

function [aproximacion]=polinomiotaylor(ecuacion,x,a,n)
%Primer elemento sin derivada
temporal=inline(ecuacion);
aproximacion=temporal(a);

%Resto de elementos
for i=1:(n-1),
    if ecuacion==0,
       return;
    end;
    %Calculamos la derivada general (syms)
    ecuacion=diff(ecuacion);
    %Hallamos la derivada en a (inline)
    temporal=inline(ecuacion);
    %Hallamos el resto del sumando 
    sumando=(temporal(a))/(factorial(i))*((x-a)^i);
    aproximacion=aproximacion+sumando;
end;