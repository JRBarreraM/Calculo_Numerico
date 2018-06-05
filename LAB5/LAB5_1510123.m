#LAB5 15-10123
load('datos20.mat');
[n,m]=size(A);
a = A(1:n,1:n);
b1 = B(1:n,1);
b2 = B(1:n,2);
b3 = B(1:n,3);

disp("Antes de aplicar los metodos iterativos determinamos si estos convergen:")
disp("Verificamos que el que el radio espectral sea menor estricto a 1")

disp("Para Jacobi:")
D=diag(diag(a));
L=tril(a,-1);
U=triu(a,1);
M=(inv(D))*(L+U);
disp(max(abs(eig(M))))

disp("Para Gauss Seidel:")
M=-1*(inv(L+D));
M=M*U;
disp(max(abs(eig(M))))
disp("En vista de esto solo aplicamos Gauss Seidel");

% Primero resolvemos el sistema con Gauss Seidel, tanto con un vector inicial
% de zeros como de unos.

disp("")

disp("Gausseidel x1")
tiempo=cputime;
x1=gausseidel(a,b1,zeros(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)

disp("")

disp("Gausseidel x1")
tiempo=cputime;
x1=gausseidel(a,b1,ones(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)

disp("");

disp("Gausseidel x2")
tiempo=cputime;
x2=gausseidel(a,b2,zeros(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)

disp("");

disp("Gausseidel x2")
tiempo=cputime;
x2=gausseidel(a,b2,ones(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)

disp("");

disp("Gausseidel x3");
tiempo=cputime;
x2=gausseidel(a,b3,zeros(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)

disp("");

disp("Gausseidel x3");
tiempo=cputime;
x3=gausseidel(a,b3,ones(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)

disp("Solucion del sistema mediante LU");
% Resolvemos el sistema con Factorizacion LU, aprovechando que lo unico
% que cambia es la sustitucion hacia adelante y hacia atras.
FactorizacionLUtriple(a,b1,b2,b3);