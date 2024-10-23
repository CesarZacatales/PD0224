%Agregar elementos a una lista

agregar_elemento(Elemmento, Lista, NuevaLista) :- =(NuevaLista, [Elemmento | Lista]).

%Eliminar elemento de una lista

eliminar_elemento_cabeza(Lista, NuevaLista) :- =(Lista, [_ | Cola]), =(NuevaLista, Cola).

eliminar_primero([_ | Cola], Cola) :- !.

%Mostrar los elementos de una lista en orden de aparición

mostrar_elementos([]) :- write('lista vacia'), !.

mostrar_elementos([Cabeza | Cola]) :- write(Cabeza), write(' '), mostrar_elementos(Cola).

%Mostrar los elementos de una lista en orden inverso

mostrar_elementos_inverso([]) :- write('lista vacia'), !.

mostrar_elementos_inverso([Cabeza | Cola]) :- mostrar_elementos_inverso(Cola), write(Cabeza), write(' ').

%Buscar elemento en una lista y devolver su posición
%buscar_elemento(Elemento, Lista, Contador, Posicion)

%caso base

buscar_elemento(_, [], _, -1) :- write('Elemento no encontrado'), !.

%Caso recursivo

buscar_elemento(Elemento, [Elemento | _], Contador, Posicion) :- is(Posicion, Contador), !.

buscar_elemento(Elemento, [_ | Cola], Contador, Posicion) :- is(NuevoContador, +(Contador, 1)), buscar_elemento(Elemento, Cola, NuevoContador, Posicion).

realizar_busqueda(Elemento, Lista, Posicion) :- buscar_elemento(Elemento, Lista, 1, Posicion).

%Ejemplo de uso: ?- realizar_busqueda(3, [1, 2, 3, 4, 5], Posicion).
%Posicion = 3.

%Contar ocurrencias de una lista
%contar_ocurrencias(Elemento, Lista, Contador, Respuesta)

%caso base
contar_ocurrencias(_, [], Contador, Contador) :- !.

%caso recursivo
contar_ocurrencias(Elemento, [Elemento | Cola], Contador, Respuesta) :- is(NuevoContador, +(Contador, 1)), contar_ocurrencias(Elemento, Cola, NuevoContador, Respuesta).

contar_ocurrencias(Elemento, [_ | Cola], Contador, Respuesta) :- contar_ocurrencias(Elemento, Cola, Contador, Respuesta).

realizar_conteo(Elemento, Lista, Respuesta) :- contar_ocurrencias(Elemento, Lista, 0, Respuesta).

%Eliminar ocurrencias de un elemento en una lista

eliminar_ocurrencias(_, [], []) :- !.

eliminar_ocurrencias(Elemento, [Elemento | Cola], NuevaLista) :- eliminar_ocurrencias(Elemento, Cola, NuevaLista), !.

eliminar_ocurrencias(Elemento, [Cabeza | Cola], NuevaLista) :- eliminar_ocurrencias(Elemento, Cola, NuevaCola), =(NuevaLista, [Cabeza | NuevaCola]).

%Insertar un elemento en una posición específica
%insertar_elemento(Elemento, Posicion, Lista, NuevaLista)

%caso base
insertar_elemento(Elemento, 1, Lista, NuevaLista) :- =(NuevaLista, [Elemento | Lista]), !.

%caso recursivo
insertar_elemento(Elemento, Posicion, [Cabeza | Cola], NuevaLista) :- is(NuevaPosicion, -(Posicion, 1)), insertar_elemento(Elemento, NuevaPosicion, Cola, NuevaCola), =(NuevaLista, [Cabeza | NuevaCola]).

