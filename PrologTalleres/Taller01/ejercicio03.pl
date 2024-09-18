%HECHOS

enemigo(rusia,ucrania).
enemigo(ucrania,rusia).
enemigo(rusia,japon).
enemigo(japon,rusia).
enemigo(el_salvador,honduras).
enemigoo(vietnam,china).
enemigo(china,ucrania).

%REGLA
%aliado/3
% \== -> diferentes 
aliado(Atacante, Enemigo, Aliado)  :- enemigo(Atacante, Enemigo), enemigo(Enemigo, Atacante), enemigo(Aliado, Enemigo),  \==(Aliado, Atacante), \==(Aliado, Enemigo), \==(Atacante, Enemigo).