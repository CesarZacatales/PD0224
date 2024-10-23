%Hacer un predicado que establezca la relación entre dos enteros N y M, y una lista que tiene todos los enteros desde N hasta M.

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