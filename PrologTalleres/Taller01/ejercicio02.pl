% HECHO juego_disponible/1

juego_disponible(minecraft).
juego_disponible(fortnite).
juego_disponible(lol).
juego_disponible(roblox).
juego_disponible(overwatch).
juego_disponible(rocket_league).
juego_disponible(valorant).
juego_disponible(totk).
juego_disponible(gta_v).

%RELACION tiene/2
tiene(javito, minecraft).
tiene(pepito, fortnite).
tiene(rodri,totk).

%REGLA comprar_juego/1

comprar_juego(X) :- juego_disponible(X), not(tiene(javito,X)), not(tiene(javito,X)), not(tiene(rodri,X)).