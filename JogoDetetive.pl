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


