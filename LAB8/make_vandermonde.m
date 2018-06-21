function A = make_vandermonde(intervalo)
  [n,m]=size(intervalo);
  A=ones(m);
  for i=1:m
    for j=2:m
      A(i,j)=intervalo(i)^(j-1);
    end
  end