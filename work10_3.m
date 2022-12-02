function work10_3
t=[0 30 60 120 180];
L=[0 0.451 0.633 0.783 0.842];
p=pchip(t,L);
f=fnder(p);
rate=fnval(f,0:10:180)