
questao1maiorV(A,M,Maior):-
		A > M,
		Maior is A,!.

questao1maiorV(_,M,Maior):-
		Maior is M.


qustao1maiorT(CONT,M):-
	CONT =< 5,
	C is CONT+1,
	write('Digite um numero:'),
	read(A),
	questao1maiorV(A,M,Maior),
	qustao1maiorT(C,Maior),!.	
	
qustao1maiorT(_,Maior):-
	write('Maior':Maior).
		
questao1:-
	
	CONT is 1,
	Maior is 0,
	qustao1maiorT(CONT,Maior).

%___________________________________
	
questao2maiorV(A,M,Maior):-
		A > M,
		Maior is A,!.

questao2maiorV(_,M,Maior):-
		Maior is M.

qustao2maiorT(CONT,M,T):-
	CONT =< T,
	C is CONT+1,
	write('Digite um numero:'),
	read(A),
	questao2maiorV(A,M,Maior),
	qustao2maiorT(C,Maior,T),!.	
	
qustao2maiorT(_,Maior,_):-
	write('Maior':Maior).
		
questao2:-
	write('Digite a quantidade de numeros:'),
	read(T),
	CONT is 1,
	M is 0,
	qustao2maiorT(CONT,M,T).
%___________________________________
questao3soma(N,Soma,S):-
	S is Soma + N.

questao3multiplicacao(N,Multiplicacao,Mult):-
	Mult is Multiplicacao * N.
	
questao3media(T,Soma,Media):-
	Media is Soma / T.

questao3numeros(T,CONT,Soma,Multiplicacao):-
	CONT =< T,
	C is CONT+1,
	write('Digite o numero:'),
	read(N),
	questao3soma(N,Soma,S),
	questao3multiplicacao(N,Multiplicacao,Mult),
	questao3numeros(T,C,S,Mult),!.
	
questao3numeros(T,_,Soma,Multiplicacao):-
	questao3media(T,Soma,Media),
	write('Dados:'),nl,
	write('Soma:':Soma),nl,
	write('Multiplicacao':Multiplicacao),nl,
	write('Media':Media).
	
questao3:-
	write('Digite a quantidade de numeros:'),
	read(T),
	CONT is 1,
	Soma is 0,
	Mult is 1,
	questao3numeros(T,CONT,Soma,Mult).
	
%________________________________________

questao4maior(A,Maior,M):-
	A > Maior,
	M is A,!.
	
quetao4maior(_,Maior,M):-
	M is Maior.
	
questao4menor(A,Menor,Me):-
	A < Menor,
	Me is A,!.
	
questao4menor(_,Menor,Me):-
	Me is Menor.
	
questao4atribuirMenor(A,Menor,AtriM):-
	Menor == 0,
	AtriM is A,!.
	
questao4atribuirMenor(_,Menor,AtriM):-
	AtriM is Menor.
		
questao4soma(A,Soma,S):-
	S is Soma+A.
	
questao4media(T,Soma,Media):-
	Media is Soma / T.
	
questao4multiplicacao(A,Mult,Mu):-
	Mu is Mult * A.
	
questao4mediamaior(Me,Maior,Result):-
	Result is Me * Maior.
	
questao4numeros(T,C,Soma,Mult,Maior,Menor):-
	C =< T,
	Co is C+1,
	write('Digite um numero:'),
	read(A),
	questao4atribuirMenor(A,Menor,AtriMe),
	questao4menor(A,AtriMe,Me),
	questao4maior(A,Maior,M),
	questao4soma(A,Soma,S),
	questao4multiplicacao(A,Mult,Mu),
	questao4numeros(T,Co,S,Mu,M,Me),!.
	
questao4numeros(T,_,Soma,Mult,Maior,Menor):-
	questao4media(T,Soma,Me),
	questao4mediamaior(Me,Maior,Result),nl,
	write('Resultados:'),nl,
	write('Menor Numero:':Menor),nl,
	write('Maior Numero':Maior),nl,
	write('Multiplicacao':Mult),nl,
	write('Media:':Me),nl,
	write('Media Aritmetica Multiplicada pelo Maior Numero:':Result).
	
questao4:-
	write('Digite a quantidade de numeros:'),
	read(T),
	CONT is 1,
	Soma is 0,
	Mult is 1,
	Maior is 0,
	Menor is 0,
	questao4numeros(T,CONT,Soma,Mult,Maior,Menor).
%_____________________________________________

questao5imprimirIm(A):-
	R is A mod 2,
	R =\= 0,
	write(A),nl,!.
questao5imprimirIm(_).
questao5numeros(A,B):-
	C is A + 1,
	C < B,
	questao5imprimirIm(C),
	questao5numeros(C,B),!.
questao5numeros(_,_):-
	write('Fim').
questao5:-
	write('Digite o 1 numero:'),
	read(A),
	write('Digite o 2 numero do Parametro: '),
	read(B),
	questao5numeros(A,B).

%____________________________________________________

questao6imprimirIm(A):-
	R is A mod 2,
	R == 0,
	write(A),nl,!.
questao6imprimirIm(_).
questao6numeros(A,B):-
	C is A + 1,
	C < B,
	questao6imprimirIm(C),
	questao6numeros(C,B),!.
questao6numeros(_,_):-
	write('Fim').
questao6:-
	write('Digite o 1 numero:'),
	read(A),
	write('Digite o 2 numero do Parametro: '),
	read(B),
	questao6numeros(A,B).
	
%____________________________________________________
questao7divisores(A,B):-
	R is A mod B,
	R == 0,
	write(B),nl,!.
questao7divisores(_,_).
questao7numeros(A,B):-
	C is B-1,
	B >= 1,
	questao7divisores(A,B),
	questao7numeros(A,C),!.
questao7numeros(_,_).
questao7:-
	write('Digite um numero:'),
	read(A),
	B is A,
	questao7numeros(A,B).
	
%______________________________________________________
questao8numeros(A,B,T,CONT):-
	CONT =< T,
	C is CONT+1,
	write(B),nl,
	Aux is A + B,
	questao8numeros(B,Aux,T,C),!.
questao8numeros(_,_).
questao8:-
	write('Digite o numero de elementos na sequencia:'),
	read(T),
	A is 0,
	B is 1,
	CONT is 1,
	questao8numeros(A,B,T,CONT).
%____________________________________________________
questao9imc(A,P,IMC):-
	Aux is (A * A),
	IMC is P / Aux.
questao9faixa(Nome,IMC):-
	IMC < 20,
	write('Nome':Nome),nl,
	write('IMC':IMC),nl,
	write('Abaixo do Peso!'),!.
questao9faixa(Nome,IMC):-
	IMC >=20,
	IMC < 25,
	write('Nome':Nome),nl,
	write('IMC':IMC),nl,
	write('Normal!'),!.
questao9faixa(Nome,IMC):-
	IMC >=25,
	IMC < 30,
	write('Nome':Nome),nl,
	write('IMC':IMC),nl,
	write('Excesso de Peso!'),!.
questao9faixa(Nome,IMC):-
	IMC >= 30,
	IMC < 35,
	write('Nome':Nome),nl,
	write('IMC':IMC),nl,
	write('Obesidade!'),!.
questao9faixa(Nome,IMC):-
	write('Nome':Nome),nl,
	write('IMC:':IMC),nl,
	write('Obesidade Mórbida!').	
questao9numeros(T,CONT):-
	CONT =< T,
	C is CONT+1,
	write('Digite nome:'),
	read(N),
	write('Digite a Altura em Metros:'),
	read(A),
	write('Digite o Peso em KG:'),
	read(P),nl,
	questao9imc(A,P,IMC),
	write('DADOS DO PACIENTE:'),nl,
	questao9faixa(N,IMC),nl,nl,
	questao9numeros(T,C),!.
questao9numeros(_,_).
questao9:-
	write('Digite a quantidade de testes que deseja:'),
	read(T),
	CONT is 1,
	questao9numeros(T,CONT).
	