likes(jco, cheese).
likes(sam, soccer).
likes(derek, p90x).
likes(tom, bikram).
likes(joe, p90x).

friend(X, Y) :- \+(X = Y), likes(X, Z), likes(Y, Z).
