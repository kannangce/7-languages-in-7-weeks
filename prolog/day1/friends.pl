likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, cheese).

friends(X, Y) :- \+(X = Y), likes(X, Z), likes(Y, Z).