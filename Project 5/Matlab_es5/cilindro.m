clc;  clear all; close all
t=2*10^(-3);
E=70*10^9;
v=0.3;
D=E*t^3/(12*(1-v^2));
C=D*pi^2;
d=1;
l=[0.5,1,5];
m=zeros(1,3);
n=zeros(1,3);
N=zeros(1,3);
N1=zeros(1,3);
for i=1:3;
    n(i)=l(i)/pi*(4*E*t/(d^2*D))^(1/4);
    m(i)=round(n(i));
    m2=m(i)+1;
    m1=m(i)-1;
    M=[m1,m(i),m2];
    N1(1)=D*(M(1)*pi/l(i))^2+4*E*t/(d^2)*(l(i)/(M(1)*pi))^2;
           for j=2:3;
               
               N1(j)=D*(M(j)*pi/l(i))^2+4*E*t/(d^2)*(l(i)/(M(j)*pi))^2;
    
            if N1(j)<N1(j-1);
                N(i)=N1(j);
                k=j;
            elseif N1(j)>N1(j-1);
                N(i)=N1(j-1);
                k=j-1;
            end
           end
           m(i)=M(k);
end
N2=pi*N;
N3=N/t;
    
