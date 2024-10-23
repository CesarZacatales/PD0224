%Eliminar el N-ésimo elemento de una lista

%caso base: si N es 1, se quita el primer elemento de la lista
eliminar_nesimo([_|Resto],1,Resto) :- !.

%caso recursivo: se quita el primer elemento de la lista y se llama a la funcion con el resto de la lista y N-1
eliminar_nesimo([X|Resto],N,[X|Resto1]) :- N > 1,
                                            N1 is N-1,
                                            eliminar_nesimo(Resto,N1,Resto1).   

%ejemplo de uso
%eliminar_nesimo([1,2,3,4,5],3,X). -> X = [1,2,4,5]
%eliminar_nesimo([1,2,3,4,5],1,X). -> X = [2,3,4,5]