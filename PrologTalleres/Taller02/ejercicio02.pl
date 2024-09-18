% CASO BASE

%suma_digitos(N,SUM) :- N < 10, !, SUM is N, !. %forma general

suma_digitos(N,N) :- N < 10, !.

% CASO RECURSIVO

suma_digitos(N,Suma) :- 
    N >= 10, 
    is(UltimoDigito, mod(N,10)), 
    is(RestoNumeros, div(N,10)), 
    suma_digitos(RestoNumeros, SumaParcial), 
    is(Suma, +(SumaParcial, UltimoDigito)).