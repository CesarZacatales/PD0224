%HECHOS

pelicula(rapunzel, animacion).
pelicula(frozen, animacion).
pelicula(avatar, ciencia_ficcion).
pelicula(terminator, ciencia_ficcion).
pelicula(titanic, romance).
pelicula(romeo_y_julieta, romance).
pelicula(rocky, deportes).
pelicula(creed, deportes).
pelicula(gladiador, accion).

gusta(marroquin, animacion).
gusta(marroquin, ciencia_ficcion).
gusta(michelle, romance).
gusta(michelle, deportes).

visto(marroquin, rapunzel).
visto(michelle, titanic).

%REGLA
recomendar_pelicula(Usuario, Pelicula) :- gusta(Usuario, Genero), pelicula(Pelicula, Genero), not(visto(Usuario, Pelicula)).


