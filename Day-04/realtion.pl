mother(mary, john).
mother(mary, anna).
mother(susan ,mary).

father(peter, john).
father(peter, anna).
father(george, mary).

parent(X,Y):-mother(X,Y).
parent(X,Y):-father(X,Y).

grandparent(X,Y):-parent(X,Z),parent(Z,Y).

ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-grandparent(X,Y).

siblings(X,Y):-mother(M,X),mother(M,Y),father(F,X),father(F,Y),x\==Y.
