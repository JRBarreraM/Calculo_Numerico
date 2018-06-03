#Lab4_1510123
disp("1. Factorización de Cholesky - Temperatura de placa");
disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("Parte 1");
A=[4,-1,-1,0,0,0,0,0;-1,4,0,-1,0,0,0,0;-1,0,4,-1,-1,0,0,0;0,-1,-1,4,0,-1,0,0;0,0,-1,0,4,-1,-1,0;0,0,0,-1,-1,4,0,-1;0,0,0,0,-1,0,4,-1;0,0,0,0,0,-1,-1,4]
%Ts,Tiz,Td,Tin,Td,Tin,Ts,Tiz
%Ts+Tiz,Tiz+Tin,Ts,Tin,Ts,Tin,Tiz+Ts,Tiz+Tin
b=[5;15;0;10;0;10;5;15]
disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("Parte 2");
if A==A'
  disp("Es igual a su traspuesta, por definicion es simetrica.")
end
disp("El menor autovalor de A es:")
disp(min(eig(A)))
disp("El menor de sus autovalor es positivo, por tanto es definida positiva.");
n=length(A);
disp("Tiene todos sus elementos nulos excepto los de la diagonal principal y");
disp("las dos diagonales secundarias hacia arriba y hacia abajo,");
disp("por definicion es pentadiagonal, esto se debe a por como las ");
disp("Temperaturas externas constantes condicionan las variables");
disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("Parte 3 y 4");
x=LUcholesky(A,b);
disp("L");
disp("Matriz de Banda con k1=2,k2=0");
disp("L traspuesta");
disp("Matriz de Banda con k1=0,k2=2");
disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("Parte 5");
disp(x);
disp("Suponga ahora que las temperaturas superior,izquierda,derecha e inferior");
disp("De la placa son Ts,Tiz,Td y Tin respectivamente.");
Ts=input('Ingrese el valor de la variable Ts: ')
Tiz=input('Ingrese el valor de la variable Tiz: ')
Td=input('Ingrese el valor de la variable Td: ')
Tin=input('Ingrese el valor de la variable Tin: ')
disp("Cada Fila representa en orden creciente la temperaturas de cada nodo");
disp(tempplaca(Ts,Tiz,Td,Tin));

disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("2. Descomposiciones LU y de Cholesky (versión 2)");
disp("Parte 1");
A=[1.012,-2.132,3.1041;-2.132,4.096,-7.013;3.1040,-7.013,0.014];
disp("                  A                     Traspuesta De A");
disp([A,A']);
% La matriz A no admite una descomposicion de Cholesky. Prueba:
% Es simetrica?
disp("Es igual a su traspuesta, por definicion es simetrica.");
% Es definida positiva?
disp("El menor autovalor de A es:");
disp(min(eig(A)));
disp("El menor de sus autovalor es negativo, por tanto  no es definida positiva.");
b=[1.984;-5.049;-3.895];

C=[6,2,1,-1;2,4,1,0;1,1,4,-1;-1,0,-1,3];
disp("         C        Traspuesta De C");
disp([C,C']);
d=[0.0;7.0;-1.0;-2.0];
% La matriz C no admite una descomposicion de Cholesky. Prueba:
% Es simetrica?
disp("Es igual a su traspuesta, por definicion es simetrica.");
% Es definida positiva?
disp("El menor autovalor de C es:");
disp(min(eig(C)));
disp("El menor de sus autovalor es positivo, por tanto  es definida positiva.");
disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("Parte 2");
disp("Aplicamos descomposicion de Cholesky a C");
y=LUcholesky(C,d);
disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("Parte 3");
disp("Aplicamos descomposicion de LU a A");
x=FactorizacionLU(A,b);
disp("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
disp("Parte 4");
disp("Resolvemos Ax=b");
disp("x=");
disp(x);
disp("Resolvemos Cy=d");
disp("y=");
disp(y);
disp("Parte 5")
disp("Ya habiamos determinado que una de ellas era definida positiva,");
disp("La factorizacion de Cholesky y la solucion del sistema nos lo confirman.")