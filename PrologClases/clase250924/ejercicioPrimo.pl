es_primo(2).
es_primo(3).
es_primo(Y) :-Y > 3, Y mod 2 =\= 0, \+ tiene_divisores(Y, 3).

tiene_divisores(Y, D) :- D * D =< Y, (Y mod D =:= 0; D2 is D + 2, tiene_divisores(Y, D2)).