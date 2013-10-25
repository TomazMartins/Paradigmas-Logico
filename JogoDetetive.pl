:- dynamic suspeito/1.
:- dynamic arma/1.
:- dynamic local/1. 

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

sabeQueNao('coronel mostarda',suspeito,'dona branca').
sabeQueNao('coronel mostarda',arma,corda).
sabeQueNao('coronel mostarda',arma,punhal).
sabeQueNao('coronel mostarda',local,biblioteca).

sabeQueNao('dona branca',susteito,'dona violeta').
sabeQueNao('dona branca',arma,veneno).
sabeQueNao('dona branca',local,'salao de jogos').
sabeQueNao('dona branca',local, adega).

sabeQueNao('senhor marinho',suspeito,desconhecido).
sabeQueNao('senhor marinho',arma,'chave inglesa').
sabeQueNao('senhor marinho',local,escritorio).
sabeQueNao('senhor marinho',local,entrada).
sabeQueNao('senhor marinho',local,'sala de musica').

sabeQueNao('dona violeta',suspeito,'senhor marinho').
sabeQueNao('dona violeta',suspeito,'senhorita rosa').
sabeQueNao('dona violeta',arma,castical).
sabeQueNao('dona violeta',local,'sala de jantar').

sabeQueNao('professor black',suspeito,desconhecido).
sabeQueNao('professor black',arma,revolver).
sabeQueNao('professor black',arma,espingarda).
sabeQueNao('professor black',local,cozinha).
sabeQueNao('professor black',local,'salao de festas').

sabeQueNao('senhorita rosa',suspeito,'coronel mostarda').
sabeQueNao('senhorita rosa',arma,'soco ingles').
sabeQueNao('senhorita rosa',local,hall).
sabeQueNao('senhorita rosa',local,'sala de estar').

possivelCrime(Susteito,Arma,Local) :- suspeito(Suspeito),arma(Arma),local(Local).

retiraSuspeito(X) :- retract(suspeito(X)),write('Suspeito retirado'),nl.
retiraLocal(X) :- retract(local(X)),write('Local retirado'),nl.
retiraArma(X) :- retract(arma(X)),write('Arma retirada'),nl.

start :- tab(15),write('Seja bem-vindo a Delegacia Prolog!'),nl,
         tab(15),write('Aqui solucionamos os crimes utilizando raciocionio logico.'),nl,nl,
         tab(15),write('Qual o seu nome, agente?'),nl,read(X),nl,
         tab(15),write('Ola, agente '),write(X),write(', execute caso1 para verificar os dados do seu primeiro caso.'),nl,
	 tab(15),write('Bom trabalho!'),nl.

caso1 :- tab(15),write('Um grande empresario foi assassinado dentro da sua propria casa.'),nl,
	 tab(15),write('Alguns suspeitos ja foram identificados e levados para a casa do falecido.'),nl,
	 tab(15),write('Os possiveis locais e armas ja estao inclusos no seu banco de dados.'),nl,
	 tab(15),write('Interroge os suspeitos e atualize o banco de forma a auxiliar na conclusao do caso.'),nl,
	 tab(15),write('Quando tiver solucionado, execute solucao(Suspeito,Arma,Local) passando as respostas para cada parametro.'),nl,nl,
	 tab(15),write('Bom trabalho!'),nl.

pergunta(Testemunha,Sobre,Suspeita) :- 	sabeQueNao(Testemunha,Sobre,Suspeita),write(Testemunha),write(' sabe que '), 
					write(Suspeita),write(' nao tem relacao com o crime.'),nl,!;write(Testemunha),
					write(' nao sabe se '), write(Suspeita),write(' tem relacao com o crime.'),nl.

solucao :- tab(15),write('Solucionou o caso, agente? Parabens! Diga-me quem eh o criminoso?'),nl,
	   tab(15),read(Criminoso),nl,tab(15),write('E qual foi o local?'),nl,tab(15),read(Local),
	   nl,tab(15), write('E qual foi a arma usada?'),nl,tab(15), read(Arma),
	   Criminoso = 'professor black', Local = jardim, Arma = cano, nl,nl,tab(15),write('Aguarde um instante, agente...'),nl,nl,
	   tab(15), write('Parabens! voce acertou! Professor Black acaba de confessar e o crime ocorreu como voce disse.'),nl,
	   tab(15), write('Continue assim que logo sera promovido.'),nl,tab(15),write('Ate a proxima!'),nl;nl,nl,tab(15),
	   write('Aguarde um instante, agente...'),nl,nl,
	   tab(15), write('Lamento, voce errou. Existem testemunhas que sabem que nao foi desse jeito. Investigue mais um pouco...'),nl,nl.

banco :- listarSuspeitos,listarArmas,listarLocais.

listarSuspeitos :-listing(suspeito).

listarArmas:- listing(arma).

listarLocais :- listing(local).


