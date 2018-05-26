function T=generarT(V)
  n = (length(V)+1)/2;
  T = zeros(n);
  for j=1:n
    T(1,j) = V(j+n-1);
    T(j,1) = V(n-j+1);
    for i=j:n-1
      T(i+2-j,i+1) = V(j+n-1);
      T(i+1,i+2-j) = V(n-j+1);
    end
  end