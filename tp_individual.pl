%Ejercicio 1
viveEnMansion(tiaAgatha).
viveEnMansion(mayordomo).
viveEnMansion(charles).

%Odia
odia(mayordomo,OtraPersona):-
  odia(tiaAgatha,OtraPersona).

odia(tiaAgatha,OtraPersona):-
  viveEnMansion(OtraPersona),
  mayordomo \= OtraPersona.

odia(charles,OtraPersona):-
  viveEnMansion(OtraPersona),
  noOdia(tiaAgatha,OtraPersona).

noOdia(Persona,OtraPersona):-
  not(odia(Persona,OtraPersona)).

%Mato
mato(Asecino,Victima):-
  odia(Asecino,Victima),
  not(masRico(Asecino,Victima)).

masRico(Persona,tiaAgatha):-
  viveEnMansion(Persona),
  noOdia(mayordomo,Persona).
/*
a)Quien mato a tia Agatha
?- mato(Asecino,tiaAgatha).
Asecino = tiaAgatha ;
false.

b)?- masRico(Persona,tiaAgatha).
Persona = mayordomo ;
false.

Ejercicio 2
-Si existe alguien que odie a milhouse.
?- odia(Persona,milhouse).
false.

-A quién odia charles.
?- odia(charles,Persona).
Persona = mayordomo ;
false.

-El nombre de quien odia a tía Ágatha
?- odia(tiaAgatha,Persona).
Persona = tiaAgatha ;
Persona = charles.

-Todos los odiadores y sus odiados.
?- odia(UnaPersona,OtraPersona).
UnaPersona = mayordomo,
OtraPersona = tiaAgatha ;
UnaPersona = mayordomo,
OtraPersona = charles ;
UnaPersona = tiaAgatha, 
OtraPersona = tiaAgatha ;
UnaPersona = tiaAgatha,
OtraPersona = charles ;
UnaPersona = charles,
OtraPersona = mayordomo ;
false.

-Si es cierto que el mayordomo odia a alguien
?- odia(mayordomo,_).
true ;
true.
*/