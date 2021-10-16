uma_casa(Nacionalidade, Pet, Cigarro, Bebida, Cor).
quem_tem_uma_zebra(Dono) :-
    dicas(Casas),
    member(uma_casa(Dono,zebra,_,_,_), Casas).

quem_bebe_agua(Dono) :-
    dicas(Casas),
    member(uma_casa(Dono,_,_,agua,_), Casas).

dicas(Casas) :-
    length(Casas, 5),                                            
    member(uma_casa(ingles,_,_,_,vermelho), Casas),                         
    member(uma_casa(espanhol,cachorro,_,_,_), Casas),                         
    member(uma_casa(_,_,_,cafe,verde), Casas),                        
    member(uma_casa(ucraniano,_,_,cha,_), Casas),                       
    casas_proximas(uma_casa(_,_,_,_,verde), uma_casa(_,_,_,_,branco), Casas),             
    member(uma_casa(_,iguana,winston,_,_), Casas),                       
    member(uma_casa(_,_,marlboro,_,amarelo), Casas),                         
    Casas = [_,_,uma_casa(_,_,_,leite,_),_,_],                          
    Casas = [uma_casa(noruegues,_,_,_,_)|_],                            
    casas_proximas(uma_casa(_,raposa,_,_,_), uma_casa(_,_,chesterfields,_,_), Casas),        
    casas_proximas(uma_casa(_,_,marlboro,_,_), uma_casa(_,cavalo,_,_,_), Casas),              
    member(uma_casa(_,_,lucky_strike,laranja,_), Casas),                         
    member(uma_casa(portugues,_,sg_lights,_,_), Casas),                      
    casas_proximas(uma_casa(noruegues,_,_,_,_), uma_casa(_,_,_,_,azul), Casas),         
    member(uma_casa(_,_,_,agua,_), Casas),       
    member(uma_casa(_,zebra,_,_,_), Casas).      

casas_proximas(A, B, Casas) :- append(_, [A,B|_], Casas).