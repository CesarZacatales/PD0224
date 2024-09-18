% HECHOS

% ACTIVIDADES DISPONIBLES 
actividad(fiesta, beber).
actividad(fiesta, jugar).
activadad(karaoke, cantar).
actividad(karaoke, bailar).
actividad(reunion, comer).
actividad(reunion, platicar).
actividad(fiesta, canta).

% PREFERENCIAS DE LOS INVITADOS
prefiere(juan, bailar).
prefiere(jose, cantar).
prefiere(juan, comer).
prefiere(jose,jugar).

% ACTIVIDADES YA ASISTIDAS 
asistio(juan, fiesta).
asistio(jose, reunion)

recomendar_evento(Usuario, Evento) :- prefiere(Usuario, Actividad), actividad(Evento, Actividad), not(asistio(Usuario, Evento)).