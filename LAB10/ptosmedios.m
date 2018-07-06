function medios = ptosmedios(interv)
  n=length(interv)-1;
  medios=NaN(n,1);
  for i=1:n
    medios(i)=(interv(i)+interv(i+1))/2;
  end