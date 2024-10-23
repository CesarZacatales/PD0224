%caso base
es_balanceado([]) :- !.

%caso recursivo
es_balanceado([_, SubArbolIzquierdo, SubArbolDerecho]) :- 
    altura(SubArbolIzquierdo, AlturaIzquierda),
    altura(SubArbolDerecho, AlturaDerecha),
    =<(abs(AlturaDerecha - AlturaIzquierda), 1),
    es_balanceado(SubArbolIzquierdo),
    es_balanceado(SubArbolDerecho).

%caso base: Altura de un arbol vacio
altura([], 0) :- !.

%caso recursivo: Altura de un arbol no vacio
altura([_, SubArbolIzquierdo, SubArbolDerecho], Altura) :- 
    altura(SubArbolIzquierdo, AlturaIzquierda),
    altura(SubArbolDerecho, AlturaDerecha),
    is(AlturaMaxima, max(AlturaIzquierda, AlturaDerecha)),
    is(Altura, +(AlturaMaxima, 1)).

%ejemplo de uso
% ?- es_balanceado([8, [3, [1,[],[]], [6, [4, [], []],[7, [], []]] ], [10, [], [14, [13, [], []], [] ] ] ]).
% false