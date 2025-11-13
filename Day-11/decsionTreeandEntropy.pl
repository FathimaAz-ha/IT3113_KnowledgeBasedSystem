:-consult('tennis.pl'). %including an external file

%?- findall(yes, example(_,_,yes), L1).
%L1 = [yes, yes, yes, yes].

%?- example(Whether, Temp, yes).
%Whether = overcast,
%Temp = hot ;
%Whether = rainy,
%Temp = mild ;
%Whether = rainy,
%Temp = cool ;
%Whether = overcast,
%Temp = cool.

%findall function says findall(value, predicate, retrieving array).
%findall(yes, example(_,_, yes), L1).
count1(Nyes):-
    findall(yes, example(_,_, yes), L1),
    length(L1, Nyes).

%counting no using array length
count2(Nno):-
    findall(no, example(_,_, no), L1),
    length(L1,Nno).

count(Nyes, Nno) :- count1(Nyes), count2(Nno).


%?- count(X, Y).
%X = 4,
%Y = 2.

%Entropy
% Pyes X log2(Pyes) - Pno X log2(Pno) - equation to find out the
% probablity
%input - count of no and count of yes

% We already have rules for count1 and count 2 so no need to use is
% operator.
% finding probablity
probab(X):-count1(Nyes),
    count2(Nno),
    Total is  Nyes+  Nno,
    Pyes is Nyes/Total,
    Pno is Nno/ Total,
    Lyes is log(Pyes) / log(2),
    Lno is log(Pno)/  log(2),
    A is Pyes * Lyes,
    B is Pno * Lno,
    X is A - B.
