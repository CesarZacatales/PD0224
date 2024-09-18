% La familia de Rodri acaba de mudarse a su nueva casa 
% y les parece bastante grande en comparacion a la anterior 
% El plano de la casa es el siguiente:
% ------------------------------------------

% 1-----------------------------------------
% De acuerdo al mapa de la casa, estableza hechos que indiquen
% los diferentes espacios que contiene, por ejemplos 
% lugar(cocina), lugar(cuarto_rodri)


% Lugares
lugar(calle).
lugar(cochera).
lugar(sala).
lugar(cuarto_estudio).
lugar(comedor).
lugar(pasillo1).
lugar(pasillo2).
lugar(cocina).
lugar(lavadero).
lugar(baño).
lugar(jardin).
lugar(cuarto_rodri).
lugar(cuarto_papas).
lugar(quiosco).

% 2 -----------------------------------
% Establezca relaciones conecta_con/2 que indiquen que, 
% del espacio indicado en el primer argumento, se puede
% pasar al espacio indicado, en el segundo argumento.
% Por Ejemplo : 
% Esta relacion puede establecerse entre el cuarto de cuarto de cuarto_estudio
% y el pasillo1, o entre la cocina y el lavadero, establecerse
% complete siempre el paso en ambos sentidos 

% Relaciones que indican cómo se conectan los espacios
%contectados /2
conecta_con(calle, cochera).
conecta_con(cochera, calle).
conecta_con(cochera, sala).
conecta_con(sala, cochera).
conecta_con(sala, pasillo1).
conecta_con(pasillo1, sala).
conecta_con(comedor, pasillo1).
conecta_con(pasillo1, comedor).
conecta_con(pasillo1, cocina).
conecta_con(cuarto_estudio, pasillo1).
conecta_con(pasillo1, cuarto_estudio).
conecta_con(cocina, pasillo1).
conecta_con(lavadero, cocina).
conecta_con(cocina, lavadero).
conecta_con(pasillo1, pasillo2).
conecta_con(pasillo2, pasillo1).
conecta_con(pasillo2, baño).
conecta_con(baño, pasillo2).
conecta_con(pasillo2, cuarto_papas).
conecta_con(cuarto_papas, pasillo2).
conecta_con(pasillo2, jardin).
conecta_con(jardin, pasillo2).
conecta_con(pasillo2, cuarto_rodri).
conecta_con(cuarto_rodri, pasillo2).
conecta_con(jardin, quiosco).
conecta_con(quiosco, jardin).
conecta_con(jardin, lavadero).
conecta_con(lavadero, jardin).

% 3 -----------------------------------
% establezca por medio de reglas los mecanismos que indiquen cómo desplazarse
% para ir , de un espacio inical, a otro espacio distinto dentro de la casa, 
% La solucion propuesta debe impirmir en consola como llegar, desde el espacio 
% de origen, al espacio distinto, pasando por espacios intermedios de la casa
% Por ejemplo:
% Si alguien está en el cuarto de estudio y debe ir al lavadero, al realizar una 
% consulta como esta -> ir_hacia(cuarto_estudio, lavadero).

% objetos dentro de la casa 
objeto(pantuflas).
objeto(flores).
objeto(pisto).
objeto(vaso_agua).
objeto(limones).
objeto(papel_higienico).
objeto(tripleX).

% relacion entre los objetos y los lugares donde se encuentran
esta_en(pantuflas, cuarto_rodri).
esta_en(flores, jardin).
esta_en(pisto, cuarto_papas).
esta_en(papel_higienico, baño).
esta_en(vaso_agua, cocina).
esta_en(limones, jardin).
esta_en(tripleX, quiosco).

% Consulta  Origen y Destino
ir_hacia(Origen,Destino):- abolish(eslabon,1),
                           assert(eslabon(Origen)),
                           ir_hacia_rec(Origen,Destino),
                           writeln(Origen).

ir_hacia_r(Origen,Destino):- conecta_con(Origen,Destino),
                             writeln(Destino),
                             assert(eslabon(Destino)),!.

ir_hacia_r(Origen,_):- conecta_con(Origen,X),
                       eslabon(X),fail.

ir_hacia_rec(Origen,Destino):- conecta_con(Origen,X),
                               not(eslabon(X)),
                               assert(eslabon(X)), 
                               ir_hacia_rec(X,Destino),
                               writeln(X),!.


% 6 -----------------------------------
% ASIMO debe saber cómo llegar de un lugar a otro, de ida y regreso, para poder realizar
% su mandado. Elabore la regla, traer/2, en la que el primer argumento es el punto de Partida
% y el indica a ASIMO como ir del punto de partida al lugar donde se encuentra el objeto. 
% y después le debe ayudar a ASIMO a regresar al punto de partida. Dentro de esta regla puede 
% realizar llamadas a la regla del numeral 3. Por Ejemplo, si se invocara la siguiente consulta, 
% el resultado seria el que muestra:

traer(Origen,_):- \+ 
                    lugar(Origen),
                  	writeln('ASIMO no lo conoce porque no es un lugar '), !, fail.


traer(_,Cosa):- \+ 
                objeto(Cosa),
                Writeln('ASIMO no encuentra el objeto porque no esta en la casa'),!,
                fail.

traer(Origen, Cosa) :- esta_en(Cosa, Lugar),
                       ir_hacia(Lugar, Partida),
                       writeln('-----------------'),
                       ir_hacia(Origen, Lugar).