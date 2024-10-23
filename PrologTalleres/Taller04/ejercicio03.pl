%Contar listas pares

%Caso base - ya no quedan listas, el conteo actual es el que se retorna

contar_listas_pares([], ConteoActual, ConteoActual) :- !.

%Caso recursivo 1 - todos los elementos de mi lista actual son pares, incrementar el conteo y procesar el resto de listas
contar_listas_pares([SubLista | Resto], ConteoTemporal, ConteoTotal) :-
    todos_pares(SubLista),
    is(NuevoConteo, +(ConteoTemporal, 1)),
    contar_listas_pares(Resto, NuevoConteo, ConteoTotal), !.

%Caso recursivo 2 - no todos los elementos de mi lista actual son pares, procesar el resto de listas
contar_listas_pares([_ | Resto], ConteoTemporal, ConteoTotal) :-
    contar_listas_pares(Resto, ConteoTemporal, ConteoTotal).

%Verificar si todos los elementos de una lista son pares

%Caso base - la lista está vacía
todos_pares([]) :- !.

%Caso recursivo: Verificar si el primer elemento es par y procesar el resto de la lista
todos_pares([Elemento | RestoDeElementos]) :- 
    Modulo is mod(Elemento, 2),
    =:=(Modulo, 0),
    todos_pares(RestoDeElementos).

%Consulta 
% contar_listas_pares([[2,4,6],[1,2,3],[4,6,8],[2,4,6]], 0, Conteo).