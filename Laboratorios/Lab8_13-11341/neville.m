% Algoritmo de Neville

% Función que se usa para la interpolación polinómica.

% Entrada: punto = valor a interpolar
%          x     = nodo x
%          y     = nodo y

% Salida:  Q = Matriz

function [Q] = neville(punto,x,y)
	n = size(y);
    n = n(2);
	Q = zeros(n,n);
	for z=1:n;
		Q(z,1) = y(1,z);
    end
	for i = 2:n;
		for j=2:i;
			Q(i,j) = (((punto-x(1,(i-j)+1))*Q(i,j-1))-((punto-x(1,i))*Q(i-1,j-1)))/(x(1,i)-x(1,(i-j)+1));
        end
    end
end

			




