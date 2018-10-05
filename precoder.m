function[R, v]=precoder() 
R=[1 0 0 1 0; -3 1 0 0 1; 2 -3 1 -7 0; 0 2 -3 -6 -7; 0 0 2 0 -6];
b=[1; 1; 1; 1; 1];
x=inv(R);
inter=x*b;
v=inter;
return
