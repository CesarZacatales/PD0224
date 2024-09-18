%Regla principal

es_palindromo(_):- 
    %invertir el numero
    invertir_numero(Numero, Invertido),
    %comparar si el numero es igual al invertido
    Numero =:= Invertido.


invertir_numero(Numero, Invertido) :- invertir_numero_aux(Numero, 0, Invertido).

invertir_numero_aux(0, Acumulador, Acumulador) :- !.

invertir_numero_aux(Numero, Acumulador, Invertido) :- 
    Numero > 0,
    is(Digito, mod(Numero, 10)),
    is(NuevaCantidad, +(Digito, *(Acumulador, 10))),
    is(RestoNumeros, div(Numero, 10)),
    invertir_numero_aux(RestoNumeros, NuevaCantidad, Invertido).


%**********************************************************************************************

% Diseña un predicado en Prolog que determine si un número entero positivo es un palíndromo. 
% Un número es considerado un palindromo si se lee de la misma manera de izquierda a derecha que de derecha a izquierda.

% Regla principal                        % invertir el numero , comparar con el original
es_palindromo(Numero) :- invertir_numero(Numero, NumeroInvertido), 
                         Numero =:= NumeroInvertido.

invertir_numero(Numero, Invertido) :- invertir_numero_aux(Numero, 0, Invertido).

% CASO BASE
invertir_numero_aux(0, Acumulador, Acumulador) :- !.

invertir_numero_aux(Numero, Acumulador, Invertido) :- Numero > 0,
                                                      is(Digito, mod(Numero,10)),
                                                      is(NuevaCantidad, +(Digito, *(Acumulador, 10))),
                                                      is(RestoNumeros, div(Numero, 10)),
                                                      invertir_numero_aux(RestoNumeros, NuevaCantidad, Invertido).