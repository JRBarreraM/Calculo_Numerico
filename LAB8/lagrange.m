function toro = lagrange(A)
  n = length(A);
  syms x;
  m = 0;
  x3 = sym(ones(n,1));
   
  for i = drange (1:n)
      for k = drange (1:n)
          if (i<k||i>k)
               L = x3(i).*((x - A(k,1))./ (A(i,1)-A(k,1)));
               x3(i) = L;
          end 
      end
  end

  for j = drange(1:n)
      P = x3(j).*A(j,2) + m;
      m = P;    
  end
  toro = simplify(m);