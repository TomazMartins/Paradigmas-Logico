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

coronelMostarda_sabeQueNao(suspeito,'dona branca').
coronelMostarda_sabeQueNao(arma,corda).
coronelMostarda_sabeQueNao(arma,punhal).
coronelMostarda_sabeQueNao(local,biblioteca).

donaBranca_sabeQueNao(susteito,'dona violeta').
donaBranca_sabeQueNao(arma,veneno).
donaBranca_sabeQueNao(local,'salao de jogos').
donaBranca_sabeQueNao(local, adega).

senhorMarinho_sabeQueNao(arma,'chave inglesa').
senhorMarinho_sabeQueNao(loca,escritorio).
senhorMarinho_sabeQueNao(loca,entrada).
senhorMarinho_sabeQueNao(loca,'sala de musica').

donaVioleta_sabeQueNao(suspeito,'senhor marinho').
donaVioleta_sabeQueNao(suspeito,'senhorita rosa').
donaVioleta_sabeQueNao(arma,castical).
donaVioleta_sabeQueNao(local,'sala de jantar').

professorBlack_sabeQueNao(arma,revolver).
professorBlack_sabeQueNao(arma,espingarda).
professorBlack_sabeQueNao(local,cozinha).
professorBlack_sabeQueNao(local,'salao de festas').

senhoritaRosa_sabeQueNao(suspeito,'coronel mostarda').
senhoritaRosa_sabeQueNao(arma,'soco ingles').
senhoritaRosa_sabeQueNao(local,hall).
senhoritaRosa_sabeQueNao(local,'sala de estar').

possivelCrime(Susteito,Arma,Local) :- suspeito(Suspeito),arma(Arma),local(Local).

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


