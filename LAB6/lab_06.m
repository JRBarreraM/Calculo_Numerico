disp('Estudiante: Jose Barrera. Carnet: 15-10123')

% Ejercicio 1:
disp("discos de Gershgorin y autovalores")
A=[-1+i,0,1/4;1/4,1,1/4;1,1,3];
B=[1,3,-2;-1,-2,3;1,1,2];
figure
discosgershgorin(A)
figure
discosgershgorin(B)

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

disp('Ejercicio 2:')
disp( 'En este ejercicio se nos pide implementar las funciones')

%Ejemplos de como llamar a las funciones:
% Buscamos los autovalores por metodo de la potencia:
%disp('Metodos Sobre A');
%disp('Metodo De La Potencia')
%[n m]=size(A);
%[x,r,k] = metodo_potencia(A,ones(n,1),1000,10^-6)
%disp('Metodo De La Potencia Inversa')
%[x,r,k] = metodo_potencia_inversa(A,ones(n,1),1000,10^-6)
%disp('Metodo De La Potencia Desplazado')
%[x,r,k] = metodo_potencia_desplazado(A,ones(n,1),real(A(1,1))-1,1000,10^-6)
%disp('Metodo De La Potencia Inversa Desplazado')
%[x,r,k] = metodo_potencia_inversa_desplazado(A,ones(n,1),real(A(1,1))-1,1000,10^-6)

%disp('Metodos Sobre B')
%disp('Metodo De La Potencia')
%[n m]=size(B);
%[x,r,k] = metodo_potencia(B,ones(n,1),1000,10^-6)
%disp('Metodo De La Potencia Inversa')
%[x,r,k] = metodo_potencia_inversa(B,ones(n,1),1000,10^-6)
%disp('Metodo De La Potencia Desplazado')
%[x,r,k] = metodo_potencia_desplazado(B,ones(n,1),real(A(2,2))-1,1000,10^-6)
%disp('Metodo De La Potencia Inversa Desplazado')
%[x,r,k] = metodo_potencia_inversa_desplazado(B,ones(n,1),real(A(1,1))-1,1000,10^-6)

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

% Ejercicio 3:
disp('Ejercicio 3')
disp('Autovalores de A')
autovalores_matlab=eig(A)
[x,r,k] = metodo_potencia(A,ones(n,1),1000,10^-6);
maximo_obtenido=r
[x,r,k] = metodo_potencia_inversa(A,ones(n,1),1000,10^-6);
minimo_obtenido=r
disp('Autovalores de B')
eig(B)
[x,r,k] = metodo_potencia(B,ones(n,1),1000,10^-6);
maximo_obtenido=r
[x,r,k] = metodo_potencia_inversa(B,ones(n,1),1000,10^-6);
minimo_obtenido=r

% Conclusiones:
% Con la matriz A cuyos autovalores son todos diferentes, podemos ver que el
% metodo converge efectivamente. Sin embargo, para la matriz B que posee 2
% autovalores iguales el metodo no converge, al no haber un autovalor minimo.

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

% Ejercicio 4:
disp('Ejercicio 4')
disp('Caso E=1')
A=[1,1,0;0,1,1;0,1,1];
[x,r,k] = metodo_potencia(A,ones(n,1),1000,10^-6);
mayor_autovalor=r
autovector_asociado=x
numero_de_iteraciones=k
autovalores=eig(A)
maximo_matlab=max(autovalores);
error_relativo_del_autovector=errorelativo(maximo_matlab,mayor_autovalor)

disp('Caso E=10^-2')
A=[1,1,0;0,1,10^-2;0,10^-2,1];
[x,r,k] = metodo_potencia(A,ones(n,1),1000,10^-6);
mayor_autovalor=r
autovector_asociado=x
numero_de_iteraciones=k
autovalores=eig(A)
maximo_matlab=max(autovalores);
error_relativo_del_autovector=errorelativo(maximo_matlab,mayor_autovalor)

disp('Caso E=10^-8')
A=[1,1,0;0,1,10^-8;0,10^-8,1];
[x,r,k] = metodo_potencia(A,ones(n,1),1000,10^-6);
mayor_autovalor=r
autovector_asociado=x
numero_de_iteraciones=k
autovalores=eig(A)
maximo_matlab=max(autovalores);
error_relativo_del_autovector=errorelativo(maximo_matlab,mayor_autovalor)

% Conclusiones:
% El numero de iteraciones aumenta en la medida que modificamos la entrada,
% dado que como vemos los autovalores tienden ha hacerse mas parecidos y este
% metodo parte de que son todos distintos. Sin menospreciar los errores que
% acumula la division entre numeros pequenos que hace el algoritmo.

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

% Ejercicio 5:
disp('Ejercicio 5')
A=[-149,-50,-154;537,180,546;-27,-9,-25];
autovectores_matlab=eig(A)
disp('Obtenemos el autovector maximo con el metodo de la potencia')
[x,r,k] = metodo_potencia(A,ones(n,1),1000,10^-6);
maximo=r
disp('Obtenemos el autovector minimo con el metodo de la potencia inversa')
[x,r,k] = metodo_potencia_inversa(A,ones(n,1),1000,10^-6);
minimo=r
disp('Obtenemos el autovector restante con el metodo de la potencia inversa desplazada')
disp('Para un miu=1.7')
[x,r,k] = metodo_potencia_inversa_desplazado(A,ones(n,1),1.7,1000,10^-6);
restante=r

% Conclusiones:
% El metodo obtiene aproximaciones bastante exactas a los autovalores reales