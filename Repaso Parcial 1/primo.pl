es_primo(2).  % El número 2 es primo.
es_primo(N) :- 
    N > 2,
    \+ divisible(N, 2).  % Si N no es divisible por ningún número entre 2 y √N, entonces es primo.

% La regla divisible verifica si un número es divisible por algún número en el rango 2..√N
divisible(N, Div) :- 
    Div * Div =< N,   % Mientras Div sea menor o igual a la raíz cuadrada de N.
    N mod Div =:= 0.  % Si N es divisible por Div, entonces no es primo.
divisible(N, Div) :- 
    Div * Div =< N,   % Si no es divisible, intentamos con el siguiente divisor.
    Div2 is Div + 1,  % Probamos con el siguiente número.
    divisible(N, Div2).
