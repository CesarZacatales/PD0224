%Base de Conocimiento
papa(juanito,miguel).
papa(juanito,marcelo).
papa(juanito,elena).
papa(miguel,karina).
papa(marcelo,migui).
papa(marcelo,juan).
papa(marcelo,fernando).
papa(marcos,gerardo).
papa(marcos,david).
papa(gerardo,nestor).
papa(david,gerson).
papa(david,juanita).

mama(marta,miguel).
mama(marta,marcelo).
mama(marta,elena).
mama(juana,karina).
mama(karina,noe).
mama(sofia,migui).
mama(sofia,juan).
mama(sofia,fernando).
mama(elena,gerardo).
mama(elena,david).
mama(gaby,nestor).
mama(industrial,gerson).
mama(industrial,juanita).

%Abuelos 
abuelo_paterno(X,Y) :- papa(X,Z), papa(Z,Y).
abuelo_materno(X,Y) :- mama(Z,Y), papa(X,Z).

%Abuelas
abuela_paterno(X,Y) :- mama(X,Z), papa(Z,Y).
abuela_materno(X,Y) :- mama(Z,Y) , mama(X,Z).

%Hermanos
hermano(X,Y) :- papa(Z,X), papa(Z,Y), mama(W,X), mama(W,Y), \==(X,Y).

%Primos
primo(X,Y) :- papa(Z,X), papa(W,Y), hermano(Z,W).
primo(X,Y) :- papa(Z,X), mama(W,Y), hermano(Z,W).
primo(X,Y) :- mama(Z,X), mama(W,Y), hermano(Z,W).

%Sobrinos
sobrino(X,Y) :- hermano(W,X), papa(W,Y).
sobrino(X,Y) :- hermano(W,X), mama(W,Y).
sobrino2(X,Y) :- primo(W,X), papa(W,Y).
sobrino2(X,Y) :- primo(W,X), mama(W,Y).

%Tios
tio(X,Y) :- hermano(Z,X), papa(Z,Y).
tio(X,Y) :- hermano(Z,X), mama(Z,Y).

%Esposos
pareja(X,Y) :- mama(X,W), papa(Y,W), \==(X,W).
