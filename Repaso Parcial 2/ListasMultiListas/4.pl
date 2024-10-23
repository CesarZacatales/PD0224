%Longitud de una lista

%caso base: una lista vacia tiene longitud 0
longitud([],0) :- !.

%caso recursivo: se quita el primer elemento de la lista y se llama a la funcion con el resto de la lista
longitud([_|Resto],N) :- longitud(Resto,N1),
                         N is N1+1.
                    
%ejemplo de uso
%longitud([1,2,3,4,5],X). -> X = 5
%longitud([],X). -> X = 0