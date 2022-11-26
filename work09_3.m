function work09_3
T=[373.15 393.25 425.55 453.65 486.25 507.75 524.25 537.85 549.65];
P=[1 2 5 10 20 30 40 50 60];
x2=T;x3=1./T;x4=log(T);y=log(P);
X=[ones(9,1),x2',x3',x4'];
b = regress(y',X);
fprintf('lnP=%.4f+%.4fT+%.4f/T+%.4flnT\n',b);
hold on
plot(T,y,'gd');

Tplot=linspace(373,550);

lnP=b(1)+b(2)*Tplot+b(3)./Tplot+b(4)*log(Tplot);
plot(Tplot,lnP)
legend('experiment','regress')
xlabel('T(K)')
ylabel('lnP')