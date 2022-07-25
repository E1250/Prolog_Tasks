parent(person("hassan"),person("aya")).
parent(person("hassan"),person("mahmoud")).
parent(person("mahmoud"),person("aly")).
parent(person("aya"),person("mohamed")).
parent(person("mohamed"),person("yara")).
bro(person("mahmoud"),person("aya")).
bro(person("aly"),person("mohamed")).



grandparent(X,Y):-
parent(Z,Y),
parent(X,Z).

uncle(J,K):-
parent(F,K),
parent(G,F),
parent(G,J).

uncle(G,S):-
parent(F,S),
bro(F,G).
