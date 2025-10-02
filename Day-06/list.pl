value(a).
value(b).
max_element(A,B,A):- A>B. %EXECUTE two conditons in one statement -if we run this rule it displays A = max_element and then false. So we use cut opertion so the if the condition satisfied it will not move to next condition.

maxElement(A,B,A):-A>B,!. %cut Operation - !
member(X, [X|_]).
%?-  member(4, [1,2,3,4,5]).
false.

?- member(1, [1,2,3,4,5]).
true.
%if we execute the above 2 queries 1 - even the 4 exist in the list it will check the header part and print the output as false
%2 - it will check the 1 in the head and it available it says it true

member(X, [_|T]):- member(X,T).

%we can try like this too
member(X, [Y|_]):- X=Y, !.

len([],0). %length of the empty list is zero

len([_|T]) :- len(T,N1), N is N1+1. 

%try to do the summation

