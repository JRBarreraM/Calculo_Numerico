% Función que aplica la eliminación del método Gauss
% con o sin pivote que devuelve una matriz triangular superior
% Entradas: A = matriz
%			b = Vector solucion
%			metodo = Metodo a usar, 1 si es con pivote, cualquier otro valor si es sin pivote
% Salida: triangular_superior = La matriz A después de aplicar Gauss
%		  solucion = Vector solucion después de aplicar Gauss
function [triangular_superior,solucion] = gauss(A,b,metodo)
    % Metodo con pivote
    if metodo == 1
	    [n,q]=size(A);
    	for i=1:n-1
	        Piv=0;
	        Piv= abs (A(i,i));
	        p=i;
	        for k=i+1:n
	            if abs (A(k,i))>Piv;
	                Piv=abs(A(k,i));
	                p=k;
	            end
	        end
	        if p~=i
	            for j=i:n
	                aux= A(i,j);
	                A(i,j)= A(p,j);
	                A(p,j)=aux;
	            end
	            aux= b(i);
	            b(i)= b(p);
	            b(p) = aux;
	        end
	        for k=i+1:n
	            m=A(k,i)/A(i,i);
	            for j= i+1:n
	                A(k,j)= A(k,j)-m*A(i,j);
	            end
	            A(k,i)=0;
	            b(k)=b(k)-m*b(i);
	        end
	    triangular_superior=A;
	    solucion = b;
		end
	%Metodo sin pivote
	else
		n = length(A);
    	for k=2:n
	        for i=k:n
	            alpha= A(i,k-1)/A(k-1,k-1);
	            for j=k:n
	                A(i,j) = A(i,j)-(alpha*A(k-1,j));
	            end
	            b(i)=b(i)-(alpha*b(k-1));
	        end
	    end
	    triangular_superior = A;
	    solucion = b;
		end
	end