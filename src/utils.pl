%min(+A, +B, -Min)
%Returns the minimum of A and B
min(A, B, Min):-
    A > B,
    Min = B.
min(A, _, A).

% read_number(-Number)
% Reads a number from the input using get_code
read_number(X):-
    read_number_aux(X,0).
read_number_aux(X,Acc):- 
    get_code(C),
    between(48, 57, C), !,
    Acc1 is 10*Acc + (C - 48),
    read_number_aux(X,Acc1).
read_number_aux(X,X).

% read_char(-Char)
read_char(Char) :-
    get_code(Code),
    char_code(Char, Code).
