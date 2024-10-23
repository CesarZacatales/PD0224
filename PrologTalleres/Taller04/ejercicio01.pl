%Recorrer listas de listas 

%Caso base
recorrer_lista_de_listas([])  :- !.

%Caso recursivo
recorrer_lista_de_listas([SubLista | RestoDeListas]) :- recorrer_lista(SubLista), recorrer_lista_de_listas(RestoDeListas).

recorrer_lista([]) :- !.

recorrer_lista([Elemento | RestoDeElementos]) :- write(Elemento), write(" "), recorrer_lista(RestoDeElementos).

%Consulta: recorrer_lista_de_listas([[1,2,3],[4,5,6],[7,8,9]]).