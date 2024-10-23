%Longitud_lista_mas_larga(Lista, Longitud)

% Caso base - la longitud de la lista de listas sin elementos es 0
longitud_lista_mas_larga([], 0) :- !.

% Caso recursivo - comparar la longitud de la lista actual con la longitud de la lista más larga del resto de listas
longitud_lista_mas_larga([PrimeraLista | RestoDeListas], LongitudMaxima) :- 
    longitud_lista(PrimeraLista, LongitudPrimera),
    longitud_lista_mas_larga(RestoDeListas, LongitudDelResto),
    maximo_numero(LongitudPrimera, LongitudDelResto, LongitudMaxima).

%Función auxiliar para calcular la longitud de una lista
longitud_lista([], 0) :- !.

longitud_lista([_ | RestoDeElementos], Longitud) :- 
    longitud_lista(RestoDeElementos, LongitudDelResto),
    is(Longitud, +(1, LongitudDelResto)).

%Función auxiliar para calcular el máximo entre dos números
maximo_numero(A, B, A) :- A >= B, !.

maximo_numero(A, B, B) :- B > A.

%Consulta: longitud_lista_mas_larga([[1,2,3],[4,5,6],[7,8,9]], Longitud).