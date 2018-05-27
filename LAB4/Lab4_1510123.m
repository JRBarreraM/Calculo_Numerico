#Lab4_1510123
disp("1. Factorización de Cholesky - Temperatura de placa");
A=[4,-1,-1,0,0,0,0,0;-1,4,0,-1,0,0,0,0;-1,0,4,-1,-1,0,0,0;0,-1,-1,4,0,-1,0,0;0,0,-1,0,4,-1,-1,0;0,0,0,-1,-1,4,0,-1;0,0,0,0,-1,0,4,-1;0,0,0,0,0,-1,-1,4]
%Ts,Tiz,Td,Tin,Td,Tin,Ts,Tiz
%Ts+Tiz,Tiz+Tin,Ts,Tin,Ts,Tin,Tiz+Ts,Tiz+Tin
b=[5;15;0;10;0;10;5;15]
if A==A'
  disp("Es igual a su traspuesta por definicion, por definicion es simetrica.")
end
disp("El menor autovalor de A es:")
disp(min(eig(A)))
disp("El menor de sus autovalor es positivo, por tanto es definida positiva.");
n=length(A);
disp("Tiene todos sus elementos nulos excepto los de la diagonal principal y");
disp("las dos diagonales secundarias hacia arriba y hacia abajo, por definicion es pentadiagonal.");
L=LUcholesky(A);
disp("L");
disp(L);
disp("Matriz de Banda con k1=2,k2=0");
disp("L traspuesta");
disp(L');
disp("Matriz de Banda con k1=0,k2=2");
disp(resolversistemaconcholesky(L,b));
disp("Suponga ahora que las temperaturas superior, izquierda, derecha e inferior");
disp("De la placa son Ts,Tiz,Td y Tin respectivamente.");
Ts=input('Ingrese el valor de la variable Ts: ')
Tiz=input('Ingrese el valor de la variable Tiz: ')
Td=input('Ingrese el valor de la variable Td: ')
Tin=input('Ingrese el valor de la variable Tin: ')
disp(tempplaca(Ts,Tiz,Td,Tin));

disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("2. Descomposiciones LU y de Cholesky (versión 2)");
disp("1.012,-2.132,3.1041");
A=[1.012,-2.132,3.1041;-2.132,4.096,-7.013;3.1040,-7.013,0.014];
b=[1.984;-5.049;-3.895];
C=[6,2,3,-1;2,4,1,0;1,2,4,-1;-1,0,-1,3];
d=[0.0;7.0;-1.0;-2.0];
