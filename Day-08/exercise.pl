%Base Case
fibonacci(0,0).
fibonacci(1,1).

%recursive case
fibonacci(N,F) :-
    N>1,
    N1 is N-1,
    N2 is N-2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2 .

element_at([H|_], 1,H).
element_at([_|T],I,X):- I>0, I1 is I-1,
    element_at(T,I1,X).

len([], 0).
len([_|T], N) :- len(T,N1), N is N1 + 1.


sum_list([], 0).
sum_list([H|T], Sum):- sum_list(T, SumTail), Sum is H + SumTail.

mean(A, X) :-
   len(A, Len1),
   sum_list(A, Sum1),
   X is Sum1/Len1.

minimum(A, X):- min_list(A,X).
