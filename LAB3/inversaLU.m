function inversa=inversaLU(A)
  n=length(A);
  inversa=eye(n);
  for k=2:n
    for i=k:n
      A(i,k-1)=A(i,k-1)/A(k-1,k-1);
      for j=k:n
        A(i,j)=A(i,j)-(A(i,k-1)*A(k-1,j));
      end
    end
  end

  U=triu(A);
  L=tril(A,-1)+eye(n);

  for z=1:n
    columnaIdentidad=zeros(n,1);
    columnaIdentidad(z)=1;
    y=susthaciadelante(L,columnaIdentidad);
    x = susthaciatras(U,y);
    for zz=1:n
      inversa(zz,z)=x(zz);
    end
  end