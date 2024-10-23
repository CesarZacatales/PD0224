%Caso base
es_arbol_busqueda([]) :- !.

%Caso recursivo
es_arbol_busqueda([Valor, SubArbolIzquierdo, SubArbolDerecho]) :- 
    todos_menores(SubArbolIzquierdo, Valor),
    todos_mayores(SubArbolDerecho, Valor),
    es_arbol_busqueda(SubArbolIzquierdo),
    es_arbol_busqueda(SubArbolDerecho).

%Caso base tdos menores
todos_menores([], _) :- !.

%Caso recursivo
todos_menores([Valor, SubArbolIzquierdo, SubArbolDerecho], Limite) :- 
    <(Valor, Limite), %si el valor es menor al limite
    todos_menores(SubArbolIzquierdo, Limite),
    todos_menores(SubArbolDerecho, Limite).

%Caso base todos mayores
todos_mayores([], _) :- !.

%Caso recursivo
todos_mayores([Valor, SubArbolIzquierdo, SubArbolDerecho], Limite) :- 
    >(Valor, Limite),
    todos_mayores(SubArbolIzquierdo, Limite),
    todos_mayores(SubArbolDerecho, Limite).

%ejemplo de uso
% ?- es_arbol_busqueda([8, [3, [1,[],[]], [6, [4, [], []],[7, [], []]] ], [10, [], [14, [13, [], []], [] ] ] ]).
% true