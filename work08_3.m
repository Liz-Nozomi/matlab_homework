function work08_3
Flowrate=[0.00 10.80 16.03 22.91 32.56 36.76 39.88 43.68];
Pressuredrop=[0.000 0.299 0.576 1.036 1.781 2.432 2.846 3.304];
Fcal=5:5:40;
hold on
plot(Flowrate,Pressuredrop,'bo')
plot(Fcal,interp1(Flowrate,Pressuredrop,Fcal),'rp')
plot(Fcal,interp1(Flowrate,Pressuredrop,Fcal,'pchip'),'gd')
plot(Fcal,interp1(Flowrate,Pressuredrop,Fcal,'spline'),'mp')
xlabel('Flow rate (L/s)')
ylabel('Pressure drop (kPa)')
legend('real','linear','pchip','spline')