
%base case
len([],0).
len([_|T],N):-len(T,N1), N is N1+1.

%summation
sum([],0).
sum([Head|Tail], Total):- sum(Tail, SumOfTail),Total is Head + SumOfTail .
