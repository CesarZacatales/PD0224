%HECHOS

evento(karaoke, cantar).
evento(karaoke, tararear).

evento(fiesta, bailar).
evento(fiesta, beber).

evento(reunion, platicar).
evento(reunion, comer).
evento(reunion, beber).
evento(reunion, jugar).
evento(reunion, brindar).

evento(funerario, llorar).
evento(funerario, rezar).
evento(funerario, recordar).
evento(funerario, abrazar).
evento(funerario, consolar).

gusta(david, cantar).
gusta(david, bailar).

gusta(erick, llorar).
gusta(erick, comer).

gusta(gerardo, comer).
gusta(gerardo, rezar).

asistio(david, funerario).
asistio(erick, reunion).
asistio(gerardo, karaoke).

%REGLA
recomendar_evento(Usuario, Evento) :- gusta(Usuario, Actividad), evento(Evento, Actividad), not(asistio(Usuario, Evento)).

