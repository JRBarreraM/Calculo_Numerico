#LAB5 15-10123
load('datos20.mat');
[n,m]=size(A);
a = A(1:n,1:n);
b1 = B(1:n,1);
b2 = B(1:n,2);
b3 = B(1:n,3);

%disp("Jacobi x1");
%tiempo=cputime;
%x1=jacovi(a,b1,zeros(n,1),1500,10^-5);
%tiempo

disp("");

disp("Gausseidel x1");
tiempo=cputime;
x1=gausseidel(a,b1,zeros(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);

disp("");

disp("FactorizacionLU x1");
tiempo=cputime;
x1=FactorizacionLU(a,b1);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);


disp("");

%disp("Jacobi x2");
%tiempo=cputime;
%x2=jacovi(a,b2,ones(n,1),1500,10^-5);
%printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);

disp("");

disp("Gausseidel x2");
tiempo=cputime;
x2=gausseidel(a,b2,ones(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);

disp("");

disp("FactorizacionLU x2");
tiempo=cputime;
x2=FactorizacionLU(a,b2);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);

disp("");

%disp("Jacobi x3");
%tiempo=cputime;
%x3=jacovi(a,b3,ones(n,1),1500,10^-5);
%printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);

disp("");

disp("Gausseidel x3");
tiempo=cputime;
x3=gausseidel(a,b3,ones(n,1),1500,10^-5);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);

disp("");

disp("FactorizacionLU x3");
tiempo=cputime;
x3=FactorizacionLU(a,b3);
printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);