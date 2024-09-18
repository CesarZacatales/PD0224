% Caso base: Si el número es 0, el cálculo termina.
calc(0, _, _, _, _) :- !.

% Llamada principal: Se inicia el cálculo llamando a la función sumardigitos/5.
calc(Numero, SumaDigitos, TotalDigitos, Pares, Impares) :-
    sumardigitos(Numero, SumaDigitos, TotalDigitos, Pares, Impares).

% sumardigitos/5: Esta función prepara los valores iniciales y llama a sumar/8.
% N: Número a procesar
% Suma: Resultado de la suma de los dígitos
% Total: Cantidad total de dígitos
% Pares: Cantidad de dígitos pares
% Impares: Cantidad de dígitos impares
sumardigitos(Numero, Suma, Total, Pares, Impares) :-
    number(Numero),
    % Se llama a la función sumar/8 con los contadores inicializados en 0
    sumar(Numero, 0, Suma, 0, Total, 0, Pares, 0, Impares).

% sumar/8: Esta función realiza la suma de los dígitos y cuenta los dígitos pares e impares.
% Caso base: Si el número es 0, devolvemos los resultados acumulados.
sumar(0, SumaFinal, SumaFinal, TotalDigitos, TotalDigitos, ParesFinal, ParesFinal, ImparesFinal, ImparesFinal) :- !.

% Caso de dígito par:
sumar(Numero, SumaActual, SumaFinal, TotalActual, TotalFinal, ParesActual, ParesFinal, ImparesActual, ImparesFinal) :-
    Numero > 0,
    Digito is Numero mod 10, % Extraemos el último dígito
    Resto is Numero // 10,   % Eliminamos el último dígito del número
    Digito mod 2 =:= 0,      % Verificamos si el dígito es par
    ParesNuevo is ParesActual + 1,  % Incrementamos el contador de pares
    SumaNueva is SumaActual + Digito, % Sumamos el dígito a la suma total
    TotalNuevo is TotalActual + 1,    % Incrementamos el contador total de dígitos
    % Llamada recursiva con los valores actualizados
    sumar(Resto, SumaNueva, SumaFinal, TotalNuevo, TotalFinal, ParesNuevo, ParesFinal, ImparesActual, ImparesFinal), !.

% Caso de dígito impar:
sumar(Numero, SumaActual, SumaFinal, TotalActual, TotalFinal, ParesActual, ParesFinal, ImparesActual, ImparesFinal) :-
    Numero > 0,
    Digito is Numero mod 10, % Extraemos el último dígito
    Resto is Numero // 10,   % Eliminamos el último dígito del número
    Digito mod 2 =\= 0,      % Verificamos si el dígito es impar
    ImparesNuevo is ImparesActual + 1, % Incrementamos el contador de impares
    SumaNueva is SumaActual + Digito,  % Sumamos el dígito a la suma total
    TotalNuevo is TotalActual + 1,     % Incrementamos el contador total de dígitos
    % Llamada recursiva con los valores actualizados
    sumar(Resto, SumaNueva, SumaFinal, TotalNuevo, TotalFinal, ParesActual, ParesFinal, ImparesNuevo, ImparesFinal), !.
