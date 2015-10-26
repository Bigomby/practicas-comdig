function P = criba02 (x)
  P = [0 2:x] ;
  for (n=2:sqrt(x))
    if P(n)
      P((2*n) : n:x) = 0 ;
    end
  end
  P = P(P ~= 0) ;
end