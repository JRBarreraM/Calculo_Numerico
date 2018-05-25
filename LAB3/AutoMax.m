function x = AutoMax(A)
  [n m]=size(A);
  syms y
  y=y*I(n)
  A=A-y
  x=det(A)