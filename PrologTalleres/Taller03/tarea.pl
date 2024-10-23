%Insertar un elemento en una posición específica
%insertar_elemento(Elemento, Posicion, Lista, NuevaLista)

%caso base
insertar_elemento(Elemento, 1, Lista, NuevaLista) :- =(NuevaLista, [Elemento | Lista]), !.

%caso recursivo
insertar_elemento(Elemento, Posicion, [Cabeza | Cola], NuevaLista) :- is(NuevaPosicion, -(Posicion, 1)), insertar_elemento(Elemento, NuevaPosicion, Cola, NuevaCola), =(NuevaLista, [Cabeza | NuevaCola]).

insercion(Elemento, Posicion, Lista) :- insertar_elemento(Elemento, Posicion, Lista, NuevaLista), write(NuevaLista).

% Ejemplo de uso: ?- insercion(5, 2, [1, 2, 3, 4]).
% [1, 5, 2, 3, 4, 5]true.