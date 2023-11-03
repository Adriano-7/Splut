%min(+A, +B, -Min)
min(A, B, Min):-
    A > B,
    Min = B.
min(A, _, A).

% read_number(-Number)
read_number(X):-
    read_number_aux(X,0).
read_number_aux(X,Acc):- 
    get_code(C),
    between(48, 57, C), !,
    Acc1 is 10*Acc + (C - 48),
    read_number_aux(X,Acc1).
read_number_aux(X,X).

writeArray([]).
writeArray([H|T]):-
    write(H), nl,
    writeArray(T).
