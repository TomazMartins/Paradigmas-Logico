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

coronel_mostarda_sabe_que_nao(suspeito,'dona blanca').
coronel_mostarda_sabe_que_nao(suspeito,'senhor marinho').
coronel_mostarda_sabe_que_nao(local,biblioteca).

crime(Susteito,Arma,Local) :- suspeito(Suspeito),arma(Arma),local(Local).

start :- tab(15),write('Seja bem-vindo a Delegacia Prolog!'),nl,
         tab(15),write('Aqui solucionamos os crimes utilizando raciocionio logico.'),nl,nl,
         tab(15),write('Qual o seu nome, agente?'),nl,read(X),nl,
         tab(15),write('Ola, agente '),write(X),write(', execute caso1 para verificar os dados do seu primeiro caso.'),nl,
	 tab(15),write('Bom trabalho!'),nl.

