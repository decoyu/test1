% comments 
clear
clc
f=11;
fc=7;
b0=33/180*pi;
r0=6378.135;
rm=r0+330;
rb=r0+180;
ym=150;
F=f/fc;
a=acos(r0/rb*cos(b0));
A=1-1/F^2+(rb/F/ym)^2;
B=-2*rm*rb^2/(F*ym)^2;
C=(rb*rm/F/ym)^2-(r0*cos(b0))^2;
G1=a-b0;
G2=r0*cos(b0)/2/sqrt(C);
G3=B^2-4*A*C;
G4=sin(a)+sqrt(C)/rb+B/2/sqrt(C);
G5=(2*A*rb+B+2*rb*sqrt(A)*sin(a))^2;

D1=2*r0*(G1-G2*log(G3/4/C/G4^2));
P1=2*(rb*sin(a)-r0*sin(b0)+1/A*(-rb*sin(a)-B/sqrt(A)/4*log(G3/G5)));

%D1=2*r0*((a-b0)-r0*cos(b0)/2/sqrt(C)*log((B^2-4*A*C)/4/C/(sin(a)+sqrt(C)/rb+B/2/sqrt(C))^2));