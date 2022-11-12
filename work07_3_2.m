function work07_3_2
calx=50:50:300;%x for calculation
for i=1:6
    xstart=0;
    solu(i)=fzero(@fun,xstart,[],calx(i));%solution
end
plot(calx,solu,'bo-')
xlabel('deltaT')
ylabel('Inservation Rate')
function y=fun(x,CA0HrrCp)
    T0=450;ER=10000;k0Ca0=exp(20);tau=0.25;
    T=T0+CA0HrrCp*x;
    y=k0Ca0*(1-x)^2*tau*exp(-ER/T)-x;
