% Projeto Interdisciplinar Em Ciência da Computação
% Autor: Fernando Cesar Ramos.
% Projeto: ChatBot de Perguntas e Respostas.
% Assunto: Redes de Computadores.
% Linguagem: Prolog.


:-include(base_dados1_rede).
:-include(base_dados2_rede).
		
bot_rede:-
	format('Saudações! Eu sou o Bot_Rede.'),nl,
	format('Voce deseja saber sobre: '),nl,
	  				
	repeat,
	nl, format('- '),
	read(Entrada),
	consulta_base_dados(Entrada, Resposta),
	format(Resposta), nl,
	encerra_sessao(Entrada).
	
consulta_base_dados(Entrada, RespostaCorreta) :-
	definida_por(Entrada, RespostaCorreta), !.	
	
encerra_sessao(Entrada):-
	Entrada = ('fim').
	
	
 
