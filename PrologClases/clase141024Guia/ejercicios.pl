%Realizar ejercicios de la guia de prolog

%César Adonay Zacatales López 00223021
%David Neftali Rodríguez Rodríguez 00218621

%Ejercicio de listas #17

%1. Hacer un predicado que establezca la relación entre dos enteros N y M, y una lista que tiene todos los enteros desde N hasta M. 

% Caso base: cuando N es mayor que M, la lista es vacía.
range(N, M, []) :- N > M, !.

% Caso recursivo: agrega N a la lista y continúa con el siguiente número.
range(N, M, [N|Rest]) :-
    N =< M,
    Next is N + 1,
    range(Next, M, Rest).

% Ejemplo: ¿Cuáles son los números entre 3 y 7
%?- range(3, 7, List).
% Salida:
% List = [3, 4, 5, 6, 7]

% Ejemplo: ¿Cuáles son los números entre 7 y 3?
%?- range(7, 3, List).
% Salida:
% List = []


%Ejercicio de arboles #06

%2. Hacer un predicado que establezca la relación entre un árbol binario y una lista que contiene los datos de todas las hojas del árbol.

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