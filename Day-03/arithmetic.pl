%1
sum(X,Y,Z) :- Z is X + Y.

%2
even(X) :- X mod 2 =:= 0.
odd(X) :- X mod 2 =\= 0.
evenorodd(X) :-even(X),write("number is even").
evenorodd(X):- odd(X),write("Number is odd").

%3
display(X) :- write("Enter a word: "),read(X),nl,writeq(X).

%4
find(A,B,sum, X) :- X is A + B.
find(A,B,sub, X) :- X is A - B.
find(A,B,div, X) :- X is A / B.
find(A,B,mul, X) :- X is A * B.
cal(X) :- write('Enter the Value :'),read(A),nl,
    write('Enter the value :'),read(B),nl,
    write('Enter the operator(sum, sub, div, mul) : '), read(O),
    find(A,B,O,X).


%5
output_values(Last, Last) :- write(Last), nl,
    write('end example'),nl.
output_values(First, Last):- First=\=Last, write(First),
    nl,N is First+1, output_values(N, Last).


%6


