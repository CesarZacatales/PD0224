%N-ésimo elemento de una lista

%caso base: si N es 1, el elemento es la cabeza de la lista
enesimo([X|_],1,X) :- !.

%caso recursivo: se quita el primer elemento de la lista y se llama a la funcion con el resto de la lista y N-1
enesimo([_|Resto],N,X) :- N > 1,
                            N1 is N-1,
                            enesimo(Resto,N1,X).

%ejemplo de uso
%enesimo([1,2,3,4,5],3,X). -> X = 3
