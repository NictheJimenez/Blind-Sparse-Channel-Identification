function [W, Winv, WA]=Wfft()
a=fft(eye(7));
b=inv(a);
W=a;


z=fft(eye(5));
%y=inv(z);

WA=z;


Winv=b;
return