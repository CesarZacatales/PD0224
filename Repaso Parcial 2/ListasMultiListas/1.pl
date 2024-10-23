%Ultimo elemento de una lista

%caso base: una lista con un solo elemento
ultimo([X],X) :- !.

%caso recursivo: se quita el primer elemento de la lista y se llama a la funcion con el resto de la lista
ultimo([_|Resto],X) :- ultimo(Resto,X).

%ejemplo de uso
%ultimo([1,2,3,4,5],X). -> X = 5
