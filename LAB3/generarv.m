function v = generarv(n)
  v = zeros(n,1);
  for i=1:2*n+1
    v(i)=1/i;
  end