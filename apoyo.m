R=[1 0 0 1 0; -3 1 0 0 1; 2 -3 1 -7 0; 0 2 -3 -6 -7; 0 0 2 0 -6];
b=[1; 1; 1; 1; 1];
x=inv(R);
inter=x*b;
eq=toeplitz(inter)
Ek=eq;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
R=[1 -3 2 0 0 0 0];

r=[1 0 -7 -6 0 0 0];
eq=toeplitz(R)
eq1=toeplitz(r)

a=elimina_vectors(eq,[4,5,6,7])
a1=elimina_vectors(eq1,[3,4,5,6,7])
x=[a,a1]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5