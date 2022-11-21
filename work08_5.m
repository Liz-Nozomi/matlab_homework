function work08_5
Pressure=[1 5 10 20 40 60 100 200 400 760];
Temperature=[783 883 932 987 1045 1081 1129 1203 1290 1382];
Ti=800:50:1350;
Pi=50:50:750;
Pcal=pchip(Temperature,Pressure,Ti);
Tcal=pchip(Pressure,Temperature,Pi);
fprintf('      T          P\n')
fprintf('%8d\t%.2f\n',[Ti;Pcal])
fprintf('      P        T\n')
fprintf('%8d\t%.2f\n',[Pi;Tcal])