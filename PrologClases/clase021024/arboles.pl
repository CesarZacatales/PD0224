%como se escribe un arbol en prolog

%[37, [20, [10, [], []], [30, [], []]], [40, [], []]].

%[37, [11, [9, [], []],[ 29, [], [33]]], 70[47, [], [59]], [89, [], [93]]].

%Mostrar un arbol binario
show_tree([]) :- !.

show_tree([P, L, R]) :- write(P), write(', '), show_tree(L), show_tree(R).

%Busqueda en arboles binarios
search_tree(_, []) :- !, fail.

search_tree(D, [D | _]) :- !.

search_tree(D, [P, L, _]) :- <(D, P), search_tree(D, L), !.

search_tree(D, [P, _, R]) :- >(D, P), search_tree(D, R).

%ejemplo de uso 
%search_tree(10, [37, [20, [10, [], []], [30, [], []]], [40, [], []]]).
