%Caso base 1: arbol vacio
contar_nodos([], 0, 0) :- !.

%Caso base 2: llegue a una hoja
contar_nodos([_, [], []], 1, 0) :- !.

%caso recursivo
contar_nodos([_, SubArbolIzquierdo, SubArbolDerecho], Hojas, Internos) :-
    contar_nodos(SubArbolIzquierdo, HojasIzquierdas, InternosIzquierdos),
    contar_nodos(SubArbolDerecho, HojasDerechas, InternosDerechos),
    is(Hojas, HojasIzquierdas + HojasDerechas),
    is(Internos, InternosIzquierdos + InternosDerechos + 1).

%ejemplo de uso
% ?- contar_nodos([8, [3, [1,[],[]], [6, [4, [], []],[7, [], []]] ], [10, [], [14, [13, [], []], [] ] ] ], Hojas, Internos).
% Hojas = 4, Internos = 5