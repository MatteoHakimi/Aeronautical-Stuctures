modi=1:10;
Sol1=textread('frequenze1.txt');
Sol2=textread('frequenze2.txt');

for j=1:10;
        fprintf('%8.0f & %8.6f \\\\ \n', modi(j),Sol1(j,5));
end
    
for j=1:10;
        fprintf('%8.0f & %8.6f \\\\ \n', modi(j),Sol2(j,5));
end
rho=2700;
g=9.81;
r=1;
A=rho*g*r/1000;
A1=rho*g*r;
e1=75000/(2*2*10^(-3));
    p=0:0.1:90;
    retta=zeros(1,length(p));
    p1=59.5;
    x=-A*(1./(1+cos(p*pi/180)));
    y=A*(1./(1+cos(p*pi/180))-cos(p*pi/180));
    x1=-A*1000*(1/(1+cos(p1*pi/180)));
    y1=A*1000*(1/(1+cos(p1*pi/180))-cos(p1*pi/180));
    figure(1)
    plot(p,x,'b');
    grid on
    title('Meridian stress dome-loaded gravity')
    xlabel('\phi [°]')
    ylabel('\sigma_{\phi} [kPa]')
    
    figure(2)
    plot(p,y,'b');
    hold on
    plot(p,retta,'r');
    grid on
    title('Parallel stress dome-loaded gravity')
    xlabel('\phi [°]')
    ylabel('\sigma_{\theta} [kPa]')
    c1=x1+e1;
    c2=y1+e1;
    
    y2=-A1*(cos(pi/6)-cos(p1*pi/180))/(sin(p1*pi/180))^2-4*10^6*sin(pi/6)/(sin(p1*pi/180))^2;
    z=A1*((cos(pi/6)-cos(p1*pi/180))/(sin(p1*pi/180))^2-cos(p1*pi/180))-4*10^6*sin(pi/6)/(sin(p1*pi/180))^2;
     z1=-A1*(cos(pi/6)-cos(p*pi/180))./(sin(p*pi/180)).^2-4*10^6*sin(pi/6)./(sin(p*pi/180)).^2;
    z2=A1*((cos(pi/6)-cos(p*pi/180))./(sin(p*pi/180)).^2-cos(p*pi/180))-4*10^6*sin(pi/6)./(sin(p*pi/180)).^2;
    
     figure(3)
    plot(p(50:end),z1(50:end)/10^6,'b');
    grid on
    title('Meridian stress open dome-loaded gravity and pressure')
    xlabel('\phi [°]')
    ylabel('\sigma_{\phi} [MPa]')
    
    figure(4)
    plot(p(50:end),z2(50:end)/10^6,'b');
    grid on
    title('Parallel stress open dome-loaded gravity and pressure')
    xlabel('\phi [°]')
    ylabel('\sigma_{\theta} [MPa]')