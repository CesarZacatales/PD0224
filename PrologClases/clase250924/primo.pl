es_primo(2).
es_primo(3).
es_primo(X) :-X > 3, X mod 2 =\= 0, \+ divisores(X, 3).

divisores(X, D) :- D * D =< X, (X mod D =:= 0; D2 is D + 2, divisores(X, D2)).