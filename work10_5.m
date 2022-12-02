function work10_5
p=[0.1 20.0 40.0 60.0 80.0 100.0 120.0];
z=[1.0 0.98654 0.97420 0.96297 0.95286 0.94387 0.93599];
pp=pchip(p,z);
fun=@(p) (fnval(pp,p)-1)./p;
logphi=integral(fun,0,120);
phi=exp(logphi);
disp(phi);

