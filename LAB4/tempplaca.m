function x = tempplaca(Ts,Tiz,Td,Tin)
  A=[4,-1,-1,0,0,0,0,0;-1,4,0,-1,0,0,0,0;-1,0,4,-1,-1,0,0,0;0,-1,-1,4,0,-1,0,0;0,0,-1,0,4,-1,-1,0;0,0,0,-1,-1,4,0,-1;0,0,0,0,-1,0,4,-1;0,0,0,0,0,-1,-1,4];
  %Ts,Tiz,Td,Tin,Td,Tin,Ts,Tiz
  b=[Ts+Tiz,Tiz+Tin,Ts,Tin,Ts,Tin,Tiz+Ts,Tiz+Tin];
  L=LUcholesky(A);
  x=resolversistemaconcholesky(L,b);