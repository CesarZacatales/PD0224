%Determina si un numero es par o impar
par_o_impar(N, par) :-
    N mod 2 =:= 0, !.
par_o_impar(N, impar) :-
    N mod 2 =\= 0.
