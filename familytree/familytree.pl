:- discontiguous male/1, female/1, parent/2.
male(dicky).
male(randy).
male(mike).
male(don).
male(elmer).
female(anne).
female(rosie).
female(esther).
female(mildred).
female(greatgranny).
male(blair).
male(mel).
male(teo).

parent(don,randy).
parent(don,mike).
parent(don,anne).
parent(rosie,randy).
parent(rosie,mike).
parent(rosie,anne).
parent(elmer,don).
parent(mildred,don).
parent(esther,rosie).
parent(esther,dicky).
parent(greatgranny,esther).
parent(randy,blair).
parent(melsr,mel).
parent(melsr,teo).

father(X,Y) :- male(X),parent(X,Y).
mother(X,Y) :- female(X),parent(X,Y).
son(X,Y) :- male(X),parent(Y,X).
daughter(X,Y) :- female(X),parent(Y,X).
grandfather(X,Y) :- male(X),parent(X,Somebody),parent(Somebody,Y).
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Somebody),ancestor(Somebody,Y).
maleancestor(X,Y) :- male(X),parent(X,Y).
maleancestor(X,Y) :- male(X),parent(X,Somebody),ancestor(Somebody,Y).
femaleancestor(X,Y) :- female(X),parent(X,Y).
femaleancestor(X,Y) :- female(X),parent(X,Somebody),ancestor(Somebody,Y).
descendant(X,Y) :- parent(Y,X).
descendant(X,Y) :- parent(Somebody,X),ancestor(Y,Somebody).
femaledescend(X,Y) :- female(X),parent(Y,X).
femaledescend(X,Y) :- female(X),parent(Somebody,X),ancestor(Y,Somebody).
maledescend(X,Y) :- male(X),parent(Y,X).
maledescend(X,Y) :- male(X),parent(Somebody,X),ancestor(Y,Somebody).
