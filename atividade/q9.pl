mover(1,ORIGEM,DESTINO,_) :-
   write('Mover disco '), write(ORIGEM), write(' para '), write(DESTINO), nl.
mover(X,Y,Z,W) :-
   X>1, XM is X-1, mover(XM,Y,W,Z), mover(1,Y,Z,_), mover(XM,W,Z,Y).
hanoi :- mover(4,1,2,3).
%https://swish.swi-prolog.org/p/q9_prologo_ia.swinb