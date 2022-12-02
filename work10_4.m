function work10_4
t=[25 100 150 200 250 300 350 400 450 500];
cp=[40.5 45.6 48.3 51.4 55.3 56.4 58.9 60.1 63.2 64.9];
p=pchip(t,cp);
f=@(t) fnval(p,t);
q=integral(f,t(1),t(10));
disp(q)
