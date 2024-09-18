% 3. Pepito se escapó de su casa y se fue con sus amigos al centro comercial. Estando
% allí se da cuenta de que sus papas también han ido de compras. Elabore una base
% de conocimiento que le ayude a Pepito a no “encontrarse” con sus papás en ningún
% lugar del centro comercial, es decir, la base de conocimiento debe conocer los
% locales y decirle a Pepito en qué lugares del centro comercial podrá estar sin ser
% visto. En muchas ocasiones su papá y su mamá deciden separarse e ir a locales
% distintos para terminar las compras más rápido. Elabore una regla de aridad tres a
% la que se le indique por medio de dos argumentos en cuál local está su mamá y en
% cuál está su papá. En el tercer argumento de la cláusula se devuelven los locales
% en los que Pepito puede estar.

local(1, tienda_de_ropa).
local(2, tienda_de_electronicos).
local(3, cafeteria).
local(4, jugueteria).
local(5, zapateria).
local(6, libreria).
local(7, joyeria).

padres_en_local(LocalPapa, LocalMama, LocalesSeguros) :-
    local(LocalPapa, _),
    local(LocalMama, _),
    findall(Local, (
        local(Local, _),
        Local \= LocalPapa,
        Local \= LocalMama
    ), LocalesSeguros).