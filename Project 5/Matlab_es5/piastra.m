t=1*10^(-3);
E=70*10^9;
v=0.3;
D=E*t^3/(1-v^2);
C=D*pi^2;
m=1:6;
p=cell(6,1);
for i=1:6
    p{i,1}=sqrt(m(i)*(m(i)-1)):0.1:sqrt(m(i)*(m(i)+1));
    K=(p{i,1}/m(i)+m(i)./p{i,1}).^2;
    figure(1)
    plot(p{i,1},K);
    hold on
    grid on
    axis([0 sqrt(42) 0 10]);
    
end
hold on
plot(0.5,6.25,'k*');
plot(1,4,'k*');
plot(2,4,'k*');
plot(5,4,'k*');
xlabel('\rho');
ylabel('K');
