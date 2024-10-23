%Hacer un predicado que establezca la relación entre un árbol binario y una lista que contiene los datos de todas las hojas del árbol.

% Caso base: si el árbol está vacío, la lista de hojas es vacía.
hojas(nil, []).

% Caso: si el nodo actual es una hoja (ambos subárboles son nil),
% entonces el valor de la hoja se agrega a la lista.
hojas(tree(nil, Raiz, nil), [Raiz]).

% Caso recursivo: el árbol tiene subárboles.
hojas(tree(Izquierdo, _, Derecho), Hojas) :-
    hojas(Izquierdo, HojasIzq),
    hojas(Derecho, HojasDer),
    append(HojasIzq, HojasDer, Hojas).

% Ejemplo: ¿Cuáles son las hojas del siguiente árbol?
%?- hojas(tree(tree(nil, 1, nil), 2, tree(tree(nil, 3, nil), 4, tree(nil, 5, nil))), Hojas).

% Salida:
% Hojas = [1, 3, 5]

% Ejemplo: ¿Cuáles son las hojas del siguiente árbol?
%?- hojas(tree(tree(nil, 1, nil), 2, tree(nil, 3, nil)), Hojas).

% Salida:
% Hojas = [1, 3]