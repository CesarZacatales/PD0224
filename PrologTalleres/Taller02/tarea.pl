factorial(0,1) :- !.
factorial(1,1) :- !.

factorial(N,X) :- 
    is(N1, -(N,1)),
    factorial(N1,Y),
    is(X, *(N,Y)).

% Permutacion
permutacion(N, R, Resultado) :-
    factorial(N, NFact),        
    N_R is N - R,                
    factorial(N_R, N_RFact),     
    Resultado is NFact // N_RFact.  