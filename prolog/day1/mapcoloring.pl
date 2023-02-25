state(s1).
state(s2).
state(s3).
state(s4).

neigbour(s1, s2).
neigbour(s1, s3).
neigbour(s1, s4).
neigbour(s1, s5).
neigbour(s2, s3).
neigbour(s2, s5).
neigbour(s3, s4).
neigbour(s4, s5).

%bi-directinal
is_neigbour(X , Y) :- neigbour(Y, X);neigbour(X, Y).

color(red).
color(green).
color(blue).
color(yellow).

conflict(State1, Col1, State2, Col2) :-
 is_neigbour(State1, State2), ==(Col1, Col2).

is_valid_assignment(State, Col) :-
 color(Col), state(State), neigbour(SomeOtherState), conflict(State, Col).


%Yet to understand how to ask the question to prolog to color the maps
