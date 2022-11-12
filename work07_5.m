function work07_5
x1cal=[100 100];
x2cal=[300 300];
solu(1:2)=fsolve(@fun,x1cal);
solu(3:4)=fsolve(@fun,x2cal);
disp(reshape(solu,2,2))
function y=fun(T)
    y(1)=400-0.0075*(300-T(1))^2-T(2);
    y(2)=400-0.02*(400-T(2))^2-T(1);
