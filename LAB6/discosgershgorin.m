function discosgershgorin(A)
  [n m]=size(A);
  if n ~= m
      error('La Matriz debe ser cuadrada')
      return
  end
  for i=1:n
      % El circulo se centra en (re,im) donde re es la parte real de A(i,i)
      % y im la parte imaginaria:
      re=real(A(i,i)); im=imag(A(i,i)); 

      % Ahore calculamos el radio, la suma de la norma de los elementos
      % en la fila donde i ~= j
      r=0;
      for j=1:n
         if i ~= j 
             r=r+abs(A(i,j));
         end    
      end  
      % Creamos el vector de puntos del circulo:
      N=256;
      t=(0:N)*2*pi/N;
      % Graficamos:
      plot( r*cos(t)+re, r*sin(t)+im ,'-');
      % Graficamos el centro del circulo:
      hold on;
      plot( re, im,'+');
      axis equal;
      grid on;
  end
  % Incluimos en la grafica los autovalores:
  ev=eig(A);
  for i=1:size(ev)
      rev=plot(real(ev(i)),imag(ev(i)),'ro');
  end
  hold off;
  legend(rev,'Autovalores');