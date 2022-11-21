function findsolution
xstart=1.2;%开始值
x=fzero(@fun,xstart);
disp(x)
function y=fun(x)
    
    y=1/(1-0.863/x)*log((1-0.863/x)*1/0.02+0.863/x)-9.37*x^0.7;