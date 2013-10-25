:- dynamic suspeito/1.
:- dynamic arma/1.
:- dynamic local/1. 

%% Fatos

suspeito('coronel mostarda').
suspeito('dona branca').
suspeito('senhor marinho').
suspeito('dona violeta').
suspeito('professor black').
suspeito('senhorita rosa').

arma(corda).
arma(punhal).
arma(cano).
arma('chave inglesa').
arma('veneno').
arma(castical).
arma(revolver).
arma(espingarda).
arma('soco ingles').

local(biblioteca).
local(jardim).
local('salao de jogos').
local(escritorio).
local(entrada).
local('sala de musica').
local('sala de jantar').
local(cozinha).
local('salao de festas').
local(hall).
local('sala de estar').
local(adega).

sabeQueNao(caso1,'coronel mostarda',suspeito,'dona branca').
sabeQueNao(caso1,'coronel mostarda',arma,corda).
sabeQueNao(caso1,'coronel mostarda',arma,punhal).
sabeQueNao(caso1,'coronel mostarda',local,biblioteca).

sabeQueNao(caso2,'coronel mostarda',suspeito,'senhor marinho').
sabeQueNao(caso2,'coronel mostarda',arma,adega).
sabeQueNao(caso2,'coronel mostarda',arma,castical).
sabeQueNao(caso2,'coronel mostarda',local,'salao de jogos').

sabeQueNao(caso1,'dona branca',susteito,'dona violeta'). 	
sabeQueNao(caso1,'dona branca',arma,veneno).			
sabeQueNao(caso1,'dona branca',local,'salao de jogos').
sabeQueNao(caso1,'dona branca',local, adega). 			

sabeQueNao(caso2,'dona branca',susteito,'professor black'). 	
sabeQueNao(caso2,'dona branca',arma,espingarda).		
sabeQueNao(caso2,'dona branca',local,biblioteca).
sabeQueNao(caso2,'dona branca',local, corda).

sabeQueNao(caso1,'senhor marinho',arma,'chave inglesa').
sabeQueNao(caso1,'senhor marinho',local,escritorio).
sabeQueNao(caso1,'senhor marinho',local,entrada).
sabeQueNao(caso1,'senhor marinho',local,'sala de musica').

sabeQueNao(caso2,'senhor marinho',arma,revolver).
sabeQueNao(caso2,'senhor marinho',local,'salao de festas').
sabeQueNao(caso2,'senhor marinho',local,entrada).
sabeQueNao(caso2,'senhor marinho',local,'sala de musica').

sabeQueNao(caso1,'dona violeta',suspeito,'senhor marinho').
sabeQueNao(caso1,'dona violeta',suspeito,'senhorita rosa').
sabeQueNao(caso1,'dona violeta',arma,castical).
sabeQueNao(caso1,'dona violeta',local,'sala de jantar').

sabeQueNao(caso2,'dona violeta',suspeito,'dona branca').
sabeQueNao(caso2,'dona violeta',suspeito,'coronel mostarda').
sabeQueNao(caso2,'dona violeta',arma,punhal).
sabeQueNao(caso2,'dona violeta',local,hall).

sabeQueNao(caso1,'professor black',arma,revolver).
sabeQueNao(caso1,'professor black',arma,espingarda). 		
sabeQueNao(caso1,'professor black',local,cozinha). 		
sabeQueNao(caso1,'professor black',local,'salao de festas').

sabeQueNao(caso2,'professor black',arma,'chave inglesa').
sabeQueNao(caso2,'professor black',arma,cano). 			
sabeQueNao(caso2,'professor black',local,'sala de jantar'). 		
sabeQueNao(caso2,'professor black',local,escritorio).

sabeQueNao(caso1,'senhorita rosa',suspeito,'coronel mostarda').
sabeQueNao(caso1,'senhorita rosa',arma,'soco ingles').
sabeQueNao(caso1,'senhorita rosa',local,hall). 			
sabeQueNao(caso1,'senhorita rosa',local,'sala de estar').

sabeQueNao(caso2,'senhorita rosa',suspeito,'senhorita rosa').
sabeQueNao(caso2,'senhorita rosa',arma,'soco ingles').
sabeQueNao(caso2,'senhorita rosa',local,jardim). 		
sabeQueNao(caso2,'senhorita rosa',local,'sala de estar').

%% REGRAS

possivelCrime(Susteito,Arma,Local) :- suspeito(Suspeito),arma(Arma),local(Local).

retiraSuspeito(X) :- retract(suspeito(X)),write('Suspeito retirado'),nl.
retiraLocal(X) :- retract(local(X)),write('Local retirado'),nl.
retiraArma(X) :- retract(arma(X)),write('Arma retirada'),nl.

start :- tab(15),write('Seja bem-vindo a Delegacia Prolog!'),nl,
         tab(15),write('Aqui solucionamos os crimes utilizando raciocionio logico.'),nl,nl,
         tab(15),write('Qual o seu nome, agente?'),nl,read(X),nl,
         tab(15),write('Ola, agente '),write(X),write(', execute recebendoCaso(Caso) para receber o seu proximo caso.'),nl,
         tab(15),write('Bom trabalho!'),nl.

caso1 :- tab(15),write('Um grande empresario foi assassinado dentro da sua propria casa.'),nl,
         tab(15),write('Alguns suspeitos ja foram identificados e levados para o local do crime.'),nl,
         tab(15),write('Os possiveis locais e armas ja estao inclusos no seu banco de dados.'),nl,
         tab(15),write('Interroge os suspeitos e atualize o banco de forma a auxiliar na conclusao do caso.'),nl,
         tab(15),write('Quando tiver solucionado, execute solucao para informar o seu superior sobre o suspeito, local e arma do crime.'),nl,nl,
         tab(15),write('Os suspeitos apenas informam o que nao tem relacao com o crime, mas tem que ser feito a pergunta certa...'),nl,
	 tab(15),write('Mas confiamos na sua habilidade de interrogar suspeitos, agente. Voce vai conseguir.'),nl,
         tab(15),write('Se precisar de ajuda, consulte manualDoAgente para ver quais recursos voce tem.'),nl,nl,
	 tab(15),write('Bom trabalho!'),nl.

caso2 :- tab(15),write('Uma mãe de familia foi morta dentro da sua propria casa.'),nl,
         tab(15),write('Alguns suspeitos ja foram identificados e levados para a delegacia.'),nl,
         tab(15),write('Os possiveis locais e armas ja estao inclusos no seu banco de dados.'),nl,
         tab(15),write('Interroge os suspeitos e atualize o banco de forma a auxiliar na conclusao do caso.'),nl,
         tab(15),write('Quando tiver solucionado, execute solucao para informar o seu superior sobre o suspeito, local e arma do crime.'),nl,nl,
         tab(15),write('Os suspeitos apenas informam o que nao tem relacao com o crime, mas tem que ser feito a pergunta certa...'),nl,
	 tab(15),write('Mas confiamos na sua habilidade de interrogar suspeitos, agente. Voce vai conseguir.'),nl,
	 tab(15),write('Se precisar de ajuda, consulte manualDoAgente para ver quais recursos voce tem.'),nl,nl,
	 tab(15),write('Bom trabalho!'),nl.

pergunta(Caso,Testemunha,Sobre,Suspeita) :- sabeQueNao(Caso,Testemunha,Sobre,Suspeita),tab(5),write('PISTA: '),write(Testemunha),write(' sabe que '), 
                                        write(Suspeita),write(' nao tem relacao com o crime.'),nl,nl,nl,!;tab(5),write(Testemunha),
                                        write(' nao sabe se '),write(Suspeita),write(' tem relacao com o crime.'),nl,nl,nl.

solucao :- tab(15),write('Solucionou o caso, agente? Parabens! Diga-me qual o numero do caso solucionado?'),nl,
           read(Caso),nl,tab(15),write('Qual o nome do criminoso?'),read(Criminoso),nl,tab(15),write('E qual foi o local?'),nl,tab(15),read(Local),
           nl,tab(15), write('E qual foi a arma usada?'),nl,tab(15), read(Arma), conferirCaso(Caso,Criminoso,Local,Arma).
           
conferirCaso(Caso,Criminoso,Local,Arma) :- Caso = caso1, Criminoso = 'professor black', Local = jardim, Arma = cano,
	   
	   nl,nl,tab(15),write('Aguarde um instante, agente...'),nl,nl,
           tab(15), write('Parabens! voce acertou! Professor Black acaba de confessar e o crime ocorreu como voce disse.'),nl,
           tab(15), write('Continue assim que logo sera promovido.'),nl,tab(15),write('Ate a proxima!'),nl,!;
	   
	   Caso = caso2, Criminoso = 'dona violeta', Local = cozinha, Arma = veneno,

           nl,nl,tab(15),write('Aguarde um instante, agente...'),nl,nl,
           tab(15), write('Parabens! voce acertou! Dona Violeta acaba de confessar e o crime ocorreu como voce disse.'),nl,
           tab(15), write('Continue assim que logo sera promovido.'),nl,tab(15),write('Ate a proxima!'),nl,!;
	   
           nl,nl,tab(15),
           write('Aguarde um instante, agente...'),nl,nl,
           tab(15), write('Lamento, voce errou. Existem testemunhas que sabem que nao foi desse jeito. Investigue mais um pouco...'),nl,nl.

banco :- listarSuspeitos,listarArmas,listarLocais.

listarSuspeitos :-listing(suspeito).
listarArmas:- listing(arma).
listarLocais :- listing(local).

recebendoCaso(X) :- Y is rand(2) + 1, X is Y - fp(Y), nl,tab(5),write('Nao esqueca o numero do seu caso, agente.'),nl,tab(5),write('Execute caso1 ou caso2 para verificar as informacoes atuais sobre o caso.'),nl,nl.

manualDoAgente :- write('Use pergunta(Caso,Testemunha,Sobre,Suspeita) para interrogar a Testemunha do Caso Sobre a sua Suspeita.'),nl,
		  write('use possivelCrime(Susteito,Arma,Local) para verificar os possiveis crimes de acordo com seus dados atuais.'),nl,
                  write('Use listarSuspeitos, listarArmas,listarLocais para verificar os possiveis itens dos seus dados'),nl,
                  write('Use retiraSuspeito(Suspeito), retiraArma(Arma), retiraLocal(Local) quando este item nao tiver relacao com o crime'),nl,
	          write('Use solucao para entregar o resultado do caso para o seu superior'),nl,
		  write('Use todos esses recursos para ajudar a solucionar esse caso.'),nl,nl,
                  write('Bom trabalho!').
