laki(ray).
laki(peter).
laki(john).
cewe(susan).
cewe(mary).
cewe(liza).
pasangan(david,amy).
pasangan(jack,karen).
pasangan(john,susan).
anakA(david,liza).
anakA(david,john).
anakA(jack,susan).
anakA(jack,ray).
anakA(john,peter).
anakA(john,mary).
anakI(amy,liza).
anakI(amy,john).
anakI(karen,susan).
anakI(karen,ray).
anakI(susan,peter).
anakI(susan,mary).


is_laki(X):- laki(X).
is_cewe(X):- cewe(X).
is_anakA(X,Y):-anakA(X,Y).
is_anakI(X,Y):-anakI(X,Y).
is_pasangan(X,Y):-pasangan(X,Y).
is_sodaraA(Y,Z):-anakA(X,Y), anakA(X,Z).
is_sodaraI(Y,Z):-anakI(X,Y), anakI(X,Z).
is_sodaraIparA(Y,Z):-pasangan(X,Y), is_sodaraI(Z,X).
is_sodaraIparI(Y,Z):-is_sodaraI(X,Y),pasangan(Z,X).
is_kakek(X,Z):-anakA(X,Y), is_anakA(Y,Z).
is_nene(X,Z):-anakI(X,Y), is_anakI(Y,Z).
