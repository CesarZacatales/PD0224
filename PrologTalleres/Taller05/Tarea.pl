%implementar un predicado en prolog llamado nodos_pares/2 que reciba un arbol binario de buqueda (BST)  y que devuelva una 
%lista con todos los valores de los nodos que sean pares.

%caso base
nodos_pares([], []) :- !.

%caso recursivo
nodos_pares([Valor, SubArbolIzquierdo, SubArbolDerecho], Res) :-
    is(ValorPar, mod(Valor, 2)),
    =(ValorPar, 0),
    nodos_pares(SubArbolIzquierdo, ResIzq),
    nodos_pares(SubArbolDerecho, ResDer),
    append(ResIzq, [Valor|ResDer], Res), !.

nodos_pares([Valor, SubArbolIzquierdo, SubArbolDerecho], Res) :-
    is(ValorPar, mod(Valor, 2)),
    \=(ValorPar, 0),
    nodos_pares(SubArbolIzquierdo, ResIzq),
    nodos_pares(SubArbolDerecho, ResDer),
    append(ResIzq, ResDer, Res), !.

%Arbol a usar: [33, [19, [10, [9, [], []], [15, [], []]], [22, [], []]], [36, [34, [], []], [38, [], []]]]

%ejemplo de uso
% ?- nodos_pares([33, [19, [10, [9, [], []], [15, [], []]], [22, [], []]], [36, [34, [], []], [38, [], []]]], Res).
% Res = [10, 22, 34,36, 38]

%Otro ejemplo con otro arbol
% ?- nodos_pares([8, [3, [1,[],[]], [6, [4, [], []],[7, [], []]] ], [10, [], [14, [13, [], []], [] ] ] ], Res).
% Res = [4, 6, 8, 10, 14]