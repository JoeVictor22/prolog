edge(a,e).
edge(c,b).
edge(e,c).
edge(e,d).
edge(c,a).
edge(b,a).
edge(d,c).
edge(e,z).
edge(q,p).
edge(a,b).

caminho(X,Y) :- prox_aresta(X,Y,[]).     

vizinho(X,Y) :- edge(X,Y) ; edge(Y,X).
prox_aresta(A,B,Y) :- vizinho(A,X) , not(member(X,Y)) , (B = X ;prox_aresta(X,B,[A|Y])).                  