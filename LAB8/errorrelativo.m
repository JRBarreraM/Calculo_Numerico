function err = errorrelativo(a,b)
  err = norm((a-b),inf)/norm(a,inf);