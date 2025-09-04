parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
grandchildren(X,Y) :- parent(Z,X),parent(Y,Z).

male(tom).
male(bob).
male(jim).

female(pam).
female(liz).
female(pat).
female(ann).


mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X).
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X).
grandfather(X,Y):-parent(X,Z),parent(Z,Y),male(X).
grandmother(X,Y):-parent(X,Z),parent(Z,Y),female(X).
grandchild(X,Y):-parent(Z,X),parent(Y,Z).
grandson(X,Y):-parent(Z,X),parent(Y,Z),male(X).
granddaughter(X,Y):-parent(Z,X),parent(Y,Z),female(X).

is_happy(X):-parent(X,_).

twochi(X):-parent(X,Y),parent(X,Z),sister(Y,Z).

aunt(X,Y):-parent(Z,Y),sister(X,Z).

