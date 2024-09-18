contar(A,B) :- =:=(A,B), writeln(B), !.

%con truco

contar(A,A) :- writeln(A), !.

contar(A,B) :- writeln(A), is(Aaux, +(A,1)), contar(Aaux,B).

%contar elementos 

contar_intervalo(A,A,1) :- !.

contar_intervalo(A,B,C) :- is(Asig, +(A,1)), contar_intervalo(Asig,B,Caux), is(C, +(Caux,1)).

%Binario 

binario(1) :-
    write(1),
    !.

binario(N) :-
    is(Cociente, //(N,2)),
    is(Residuo, mod(N,2)),
    binario(Cociente),
    write(Residuo).


%Binario por posposicion

binario_posposicion(1,1) :- !.