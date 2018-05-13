% Función que aplica la eliminación del método Gauss
% con o sin pivote que devuelve una matriz triangular superior
% Entradas: A = matriz
%			b = Vector solucion
%			metodo = Metodo a usar, 1 si es con pivote, 0 si es sin pivote
% Salida: triangular_superior = La matriz A después de aplicar Gauss
%		  solucion = Vector solucion después de aplicar Gauss
function solucion = gauss(A,b,metodo)
  % Metodo con pivote
  if metodo == 1
    solucion = gaussipivot(A,b);
  end
  %Metodo sin pivote
	if metodo == 0
    solucion = gaussiana(A,b);
  end