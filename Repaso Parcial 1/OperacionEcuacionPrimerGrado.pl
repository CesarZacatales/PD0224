% Ecuación de Primer Grado 
% Suma
suma(X,Y,Z) :-  Z is +(X,Y).

% Resta
resta(X,Y,Respuesta) :- Respuesta is  -(X,Y).

%Multiplicacion
multiplicar(X,Y,W) :- W is X*Y; write("hola").

%Ecuacion de primer grado 
ecuacion_primer((A,B),R) :- A=\= 0, R is -B/A .

ecuacion_grado((A,B,C),X1,X2) :-    A=:= 0, write('no se puede trabajar');
                                    D is(B*B -(4*A*C)),
                                    (  D < 0 ->
                                    write('La solucion es imaginaria');
                                    D =:=0 ->
                                    X1 is(-B)/(2*A),
                                    X2 is X1;
                                    D > 0 ->
                                    X1 is (-B + sqrt(D))/(2*A),
                                    X2 is (-B -sqrt(D))/(2*A)).