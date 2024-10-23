%buscar_rango(Arbol, Minimo, Maximo, Resultado).

%caso base: Altura de un arbol vacio
buscar_rango([], _, _, []) :- !.

%caso recursivo: Altura de un arbol no vacio
buscar_rango([Valor, SubArbolIzquierdo, SubArbolDerecho], Maximo, Minimo, Res) :-
    >=(Valor, Minimo),
    =<(Valor, Maximo),
    buscar_rango(SubArbolIzquierdo, Maximo, Minimo, ResIzq),
    buscar_rango(SubArbolDerecho, Maximo, Minimo, ResDer),
    append(ResIzq, [Valor|ResDer], Res), !.

buscar_rango([Valor, _, SubArbolDerecho], Maximo, Minimo, Res) :- 
    <(Valor, Maximo),
    buscar_rango(SubArbolDerecho, Maximo, Minimo, Res), !.

buscar_rango([Valor, SubArbolIzquierdo, _], Maximo, Minimo, Res) :-
    >(Valor, Maximo),
    buscar_rango(SubArbolIzquierdo, Maximo, Minimo, Res), !.

%ejemplo de uso
% ?- buscar_rango([8, [3, [1,[],[]], [6, [4, [], []],[7, [], []]] ], [10, [], [14, [13, [], []], [] ] ] ], 10, 4, Res).
% Res = [4, 6, 7, 8, 10] 