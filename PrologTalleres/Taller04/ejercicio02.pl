%Reemplazar elementos en una lista de listas

%Caso base - la lista de listas está vacía
reemplazar(_, _, [], []) :- !.

%Caso recursivo - para cada sublista, reemplazar el elemento y procesar el resto de listas
reemplazar(ValorAntiguo, ValorNuevo, [SubLista | OtrasSubListas], [SubListaReemplazada | OtrasSubListasReemplazadas]) :- 
    reemplazar_en_sublista(ValorAntiguo, ValorNuevo, SubLista, SubListaReemplazada),
    reemplazar(ValorAntiguo, ValorNuevo, OtrasSubListas, OtrasSubListasReemplazadas).

%Caso base - la sublista está vacía
reemplazar_en_sublista(_, _, [], []) :- !.

%Caso recursivo 1 - Si el valor acual es el valor a reemplazar, reemplazarlo, sino, dejarlo igual
reemplazar_en_sublista(ValorAntiguo, ValorNuevo, [ValorAntiguo | RestoDeElementos], [ValorNuevo | RestoDeElementosReemplazados]) :- 
    reemplazar_en_sublista(ValorAntiguo, ValorNuevo, RestoDeElementos, RestoDeElementosReemplazados).

%Caso recursivo 2 - Si el valor acual no es el valor a reemplazar
reemplazar_en_sublista(ValorAntiguo, ValorNuevo, [Elemento | RestoDeElementos], [Elemento | RestoDeElementosReemplazados]) :- 
    reemplazar_en_sublista(ValorAntiguo, ValorNuevo, RestoDeElementos, RestoDeElementosReemplazados).

