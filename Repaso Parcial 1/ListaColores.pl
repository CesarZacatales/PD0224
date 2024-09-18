% Base de conocimiento: colores favoritos de personas
color_favorito(maria, rojo).
color_favorito(pedro, azul).
color_favorito(juan, verde).
color_favorito(laura, amarillo).
color_favorito(carlos, morado).
color_favorito(ana, rosa).
color_favorito(jose, negro).

% Predicado para listar los colores favoritos
listar_colores :-
    color_favorito(Persona, Color),
    write(Persona), write(' le gusta el color '), write(Color),nl, fail.

