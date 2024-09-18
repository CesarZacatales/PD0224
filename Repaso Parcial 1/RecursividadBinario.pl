binario(1) :-
            write(1),
            !.

binario(N) :-
            is(Cociente, //(N,2)),
            is(Residuo, mod(N,2)),
            binario(Cociente),
            write(Residuo).