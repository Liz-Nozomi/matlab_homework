function work07_3_1
xstart=0;%开始值
x=fzero(@fun,xstart);
disp(x)
function y=fun(x)
    T0=450;CA0HrrCp=250;ER=10000;k0Ca0=exp(20);tau=0.25;
    T=T0+CA0HrrCp*x;
    y=k0Ca0*(1-x)^2*tau*exp(-ER/T)-x;

