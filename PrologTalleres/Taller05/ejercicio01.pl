%escriba un predicado que calcule la altura de un arbol binario. la profundidad es la longitud del camino mas largo desde la raiz hasta una hoja.

%altura(+Arbol, -Altura)

%caso base: Altura de un arbol vacio
altura([], 0) :- !.

%caso recursivo: Altura de un arbol no vacio
altura([_, SubArbolIzquierdo, SubArbolDerecho], Altura) :- 
    altura(SubArbolIzquierdo, AlturaIzquierda),
    altura(SubArbolDerecho, AlturaDerecha),
    is(AlturaMaxima, max(AlturaIzquierda, AlturaDerecha)),
    is(Altura, +(AlturaMaxima, 1)).

%ejemplo de uso
% ?- altura([8, [3, [1,[],[]], [6, [4, [], []],[7, [], []]] ], [10, [], [14, [13, [], []], [] ] ] ], Altura).
% Altura = 4