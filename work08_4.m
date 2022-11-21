function work08_4
t=[0 0.2 0.6 1.0 2.0 5.0 10.0];
ct=[5.19 3.77 2.30 1.57 0.8 0.25 0.094];
plot(t,ct,'mp');
ct1=pchip(t,ct,8.2);
hold on
disp(ct1);
plot(0:0.2:10,interp1(t,ct,0:0.2:10,'pchip'),'b-',8.2,ct1,'gd');

ct2=spline(t,ct,8.2);
disp(ct2);
plot(0:0.2:10,interp1(t,ct,0:0.2:10,'spline'),'r-',8.2,ct2,'rp');
legend('experiment','ct by pchip','8.2 by pchip','ct by spline','8.2 by spline')