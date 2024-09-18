%Determina el minimo comun divisor de dos numeros
mcd(X, 0, X):- !.
mcd(X, Y, Resultado) :-
    Y > 0,
    Resto is X mod Y,
    mcd(Y, Resto, Resultado).
