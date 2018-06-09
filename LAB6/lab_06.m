% Ejercicio 1:
disp("discos de Gershgorin y autovalores")
A=[-1+i,0,1/4;1/4,1,1/4;1,1,3];
B=[1,3,-2;-1,-2,3;1,1,2];
eig(A)
eig(B)
%figure
%intervalo = (8*pi):0.01:(14*pi);
%resultados_cos_Taylor=cos_Taylor(intervalo,51);
%resultados_rcos=rcos(intervalo,51,1);
%hold on
%grid on
%plot(intervalo,resultados_cos_Taylor,'-',intervalo,resultados_rcos,'--')
%title('Ejercicio 2');
%legend('iterativo','recursivo');
%xlabel('Solo se toma en cuenta este intervalo, de las abscisas porque entre [0,45) es constantemente 0 en y');
%ylabel('Eje de Ordenadas');
%axis([40 45]);

% Ejercicio 2:
[n m]=size(A);
[x,r,k] = metodo_potencia(A,zeros(n,1),1000,10^-6)
[n m]=size(B);
[x,r,k] = metodo_potencia(A,zeros(n,1),1000,10^-6)