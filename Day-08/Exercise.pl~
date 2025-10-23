%write a prolog predicate distance/3 to calculate the distance between
% two pints in the 2-dimension plane.Points are given as pairs of
% coordinates.

distance((X1,Y1), (X2,Y2), C):-C is  sqrt((X1-X2)**2 + (Y1-Y2)**2).

% write a Prolog program to printout a square of nxn given characters on
% the screen. Call your predicate sauare/2. The argument should be a
% positive integer. the second argument should be the character (any
% prolog term tobe printed)


print_character(N,C):-between(1,N,_), write(C),nl, fail.
square(N, C):- between(1, N, _), print_character(N,C),nl, fail.


print_char(N,C):- forall(between(1,N,_),write(C)), nl.
