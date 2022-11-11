% Fatos
conectado(1,2). 
conectado(3,4). 
conectado(5,6).
conectado(7,8). 
conectado(9,10). 
conectado(12,13).
conectado(13,14). 
conectado(15,16). 
conectado(17,18). 
conectado(19,20). 
conectado(4,1). 
conectado(6,3). 
conectado(4,7). 
conectado(6,11). 
conectado(14,9). 
conectado(11,15). 
conectado(16,12). 
conectado(14,17). 
conectado(16,19).

% Questões

% Pode-se ir do ponto 5 para o ponto 10? 
% ?- caminho(5, 10).
% false

% Em quais outros pontos se pode chegar partindo do ponto 1?
% ?- caminho(1, D).
% D = 2

% E quais pontos podem ser alcançados saindo do ponto 13?
% ?- caminho(13, D).
% D = 14
% D = 9
% D = 17

% Predicado
caminho(I, D):-
    conectado(I, D);
    conectado(I, X),
    conectado(X, D).

