#LAB7 Estudiante: Jose R. Barrera M. Carnet: 15-10123.
load('data.mat');

disp('Parte A')

n=length(yd)

disp('Para un polinomio de grado 5')
p5=polyfit(xd,yd,5)'

error_cuadratico_medio=sum((polyval(p5,xd)-yd).^2)/n

disp('Para un polinomio de grado 15')
p15=polyfit(xd,yd,15)'
error_cuadratico_medio=sum((polyval(p15,xd)-yd).^2)/n

disp('Para un polinomio de grado 20')
p20=polyfit(xd,yd,20)'
error_cuadratico_medio=sum((polyval(p20,xd)-yd).^2)/n

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

disp('Parte B')

x=linspace(min(xd),max(xd),1000);

disp('Grafico Para Polinomio De Grado 5')
figure;
plot(xd,yd,'.r');
title('Polinomio De Grado 5');
hold on
evalp5=polyval(p5,x);
plot(x,evalp5,'-b');
legend('Valores iniciales','Polinomio De Grado 5');
xlabel('Tiempo (Minutos)')
ylabel('Temperatura (Grados Celcius)')

disp('Grafico Para Polinomio De Grado 15')
figure;
plot(xd,yd,'.r');
title('Polinomio De Grado 15');
hold on
plot(x,polyval(p15,x),'-b');
legend('Valores iniciales','Polinomio De Grado 15');
xlabel('Tiempo (Minutos)')
ylabel('Temperatura (Grados Celcius)')

disp('Grafico Para Polinomio De Grado 20')
figure;
plot(xd,yd,'.r');
title('Polinomio De Grado 20');
hold on
plot(x,polyval(p20,x),'-b');
legend('Valores iniciales','Polinomio De Grado 20');
xlabel('Tiempo (Minutos)')
ylabel('Temperatura (Grados Celcius)')

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

disp('Parte C')

disp('Evaluamos El Polinomio De Grado 15')
%Usamos format long para trabajar con 15 cifras decimales
format long

disp('Para 4.5')
polyval(p15,4.5)

disp('Para 5')
polyval(p15,5)

disp('Para 5.5')
polyval(p15,5.5)

% Tras graficar las distintas aproximaciones obtenidas con la funcion polyfit de
% matlab, observamos que la aproximacion de grado 20 es mucho mas ajustada a los
% puntos dados. Sin embargo, las oscilaciones que presenta en el intervalo 4.5 a
% 5.5 lo hacen una opcion menos confiable que el de grado 15 para aproximar dichos
% valores.

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

disp('Parte D')

p15(end)=p15(end)-36.612;
disp('Tiempo en el que se alcanza la temperatura 36,612')
Tiempo=roots(p15);
Tiempo=encontrar_tiempo(Tiempo,0,8)
% Notese que este calculo presenta las cifras pedidas mientras que los tres
% anteriores a pesar de estar en format long no las presentan, esto indica que
% que en los casos anteriores estas cifras no eran cignificativas.

% Afortunadamente la funcion encontrar_tiempo solo encontro un candidato, por lo
% tanto este es el tiempo que buscabamos.

% Para encontrar dicho valor empleamos la funcion encontrar_tiempo. A esta, le
% pasamos el polinomio seleccionada al cual les restamos 36.612 (el valor que
% deseamos obtener), y buscamos los autovalores del nuevo polinomio filtrando
% aquellos que esten en el intervalo 0 a 8 y tenga parte imaginaria nula.