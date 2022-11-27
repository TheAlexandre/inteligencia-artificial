% QUESTÃO 2

intercalada([ ], L, L).
intercalada([ H| T], L,[ H| R]):-
    intercalada( T, L, R).

% QUESTÃO 3

insercao_ord(L, [], L).
insercao_ord(L,[H|T],[H|R]):-
    insercao_ord(L,T,R).

% QUESTÃO 4
ordenada([],[]).
ordenada([A],[A]).
ordenada([A,B|R],Z) :-  
   split([A,B|R],L1,L2),
   ordenada(L1,S1),
   ordenada(L2,S2),
   juntar(S1,S2,Z).

split([],[],[]).
split([A],[A],[]).
split([A,B|R],[A|Ra],[B|Rb]) :-  split(R,Ra,Rb).

juntar(A,[],A).
juntar([],B,B).
juntar([A|Ra],[B|Rb],[A|M]):-
    A =< B, juntar(Ra,[B|Rb],M).
juntar([A|Ra],[B|Rb],[B|M]):-
    A > B,  juntar([A|Ra],Rb,M).