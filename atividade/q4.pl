encostado(a,b).
encostado(a,e).
encostado(b,c).
encostado(b,f).
encostado(b,a).
encostado(c,b).
encostado(c,g).
encostado(e,a).
encostado(e,f).
encostado(e,g).
encostado(f,e).
encostado(f,g).
encostado(f,b).
encostado(g,c).
encostado(g,f).
encostado(h,e).
encostado(h,i).
encostado(i,f).
encostado(i,h).
esquerda_do_topo(f,i).
esquerda_do_topo(c,g).

encostado_em(X):- encostado(X,Y), write(Y),  nl.
sobre_bloco(X):- esquerda_do_topo(X,Y), encostado(Y,_), write(X), nl.

blocos_encostados(X) :- prox_bloco(X,[X]).     
conectado(X,Y) :- encostado(X,Y).
prox_bloco(A,Y) :-
    conectado(A,X),not(member(X,Y)) , write(X), (prox_bloco(X,[A|Y])).  
%https://swish.swi-prolog.org/p/q4_prologo_ia.swinb