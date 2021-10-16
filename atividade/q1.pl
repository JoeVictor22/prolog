biocentrismo :- write("Biocentrismo").
robert :- write('Robert Lanza').
americano :- write('Nasceu nos EUA').
consciencia :- write("Consciêcia").
biologia :- write("Biologia").
realidade :- write("Realidade").
pessoa(robert).
objeto(consciencia).
ciencia(biologia).
nasceu_como(robert, americano).
autor(robert, biocentrismo).
ponto_central_do_estudo(biologia, realidade).
qual_ciencia_deve_estudar(X) :- ponto_central_do_estudo(Y,X), write(Y).
pode_morrer(X) :- pessoa(X), not(objeto(X)).
eh_imortal(X) :- not(pode_morrer(X)), write("Sim,"), write(X), write(" é imortal").
nacionalidade(X) :- nasceu_como(X,Y), write(Y).
escreveu_que_livro(X) :- autor(X,Y), write(Y).


a :- write("\n\n Qual a nacionalidade de "), robert, write("? Resposta:"), nacionalidade(robert).
b :- write("\n\n Qual livro "), robert, write(" escreveu? Resposta:"), escreveu_que_livro(robert).
c :- write("\n\n Que ciência deve ter o ponto central de estudo da "), realidade, write("? Resposta:"), qual_ciencia_deve_estudar(realidade).
d :- write("\n\n A "), consciencia, write(" é imortal? Resposta:"), eh_imortal(consciencia).

main :- a,b,c,d.
