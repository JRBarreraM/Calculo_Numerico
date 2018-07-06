function [maxi_velocidad,maxi_instante,mas_80,mas_80_instante] = encontrar_maximo(tiempo,velocidad)
  
  n=length(velocidad);
  
  maxi_velocidad=velocidad(1);
  
  maxi_instante=tiempo(1);
  
  mas_80=velocidad(1);
  
  mas_80_instante=tiempo(1);
  
  encontrado=0;
  
  for i=2:n
    if maxi_velocidad<velocidad(i)
      maxi_velocidad=velocidad(i);
      maxi_instante=tiempo(i+1);
    end
    if 80<velocidad(i)
      if encontrado ~=1
        mas_80=velocidad(i);
        mas_80_instante=tiempo(i+1);
        encontrado=1;
      end
    end
  end
endfunction