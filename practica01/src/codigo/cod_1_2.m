function primeList = criba01 (lastNumber)
  List = 2:lastNumber;
  primeList = [];
  while(List (1)^2 < lastNumber)
   primeList = [primeList List (1)];
   List(mod(List, List (1) ) == 0) = [];
  end
end
