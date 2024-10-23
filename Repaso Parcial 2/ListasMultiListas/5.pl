%Reversa de una lista

%caso base: una lista vacia
reversa([],[]):-
    !.

%caso recursivo: se quita el primer elemento de la lista y se llama a la funcion con el resto de la lista
reversa([X|Resto],R):-
    reversa(Resto,R1),
    append(R1,[X],R).  %se agrega X al final de la lista R1

%ejemplo de uso
%reversa([1,2,3,4,5],X). -> X = [5,4,3,2,1]


%SI ES PALÍNDROMO   

es_palindromo(L):-
    reversa(L,L).  

%ejemplo de uso
%es_palindromo([1,2,3,2,1]). -> true
%es_palindromo([1,2,3,4,5]). -> false 