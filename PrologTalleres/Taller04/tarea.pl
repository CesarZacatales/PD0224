%Realizar la suma de longitudes en la lista de listas, se devuelve la suma de las longitudes de las listas que contienen por lo menos un numero par
%si una lista no contiene numeros pares, su logitud no debe sumarse.

%Caso base - la suma de longitudes de la lista de listas sin elementos es 0

suma_longitudes([], 0) :- !.

% Caso recursivo - comparar la longitud de la lista actual con la longitud de la lista más larga del resto de listas

suma_longitudes([PrimeraLista | RestoDeListas], SumaTotal) :-
    contiene_par(PrimeraLista),
    longitud_lista(PrimeraLista, LongitudPrimera),
    suma_longitudes(RestoDeListas, SumaDelResto),
    SumaTotal is LongitudPrimera + SumaDelResto, !.

suma_longitudes([_ | RestoDeListas], SumaTotal) :-
    suma_longitudes(RestoDeListas, SumaTotal).

%Función auxiliar para calcular la longitud de una lista
longitud_lista([], 0) :- !.

longitud_lista([_ | RestoDeElementos], Longitud) :- 
    longitud_lista(RestoDeElementos, LongitudDelResto),
    Longitud is LongitudDelResto + 1.

%Función auxiliar para verificar si una lista contiene al menos un número par
contiene_par([Cabeza | _]) :-
    0 is Cabeza mod 2, !. 

contiene_par([_ | Cola]) :-
    contiene_par(Cola).


%Consulta: suma_longitudes([[1,2,3],[4,5,6],[7,8,9]], Resultado).
%Valor esperado: Resultado = 9

%Consulta: suma_longitudes([[1,2,3],[4,5,6],[7,5,9]], Resultado).
%Valor esperado: Resultado = 6

%Consulta: suma_longitudes([[1,3,5],[7,9,11],[13,15,17]], Resultado).
%Valor esperado: Resultado = 0