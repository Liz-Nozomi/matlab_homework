function[fx]=work06_4(x)
A=[1.5020 0 0.0514 0.0408;
    0.0261 0 1.1516 0.0820;
    0.0342 2.532 0.0355 0.2933;
    0.340 0 0.0684 0.3470];
B=[0.1013;0.09943;0.2194;0.03369];
solv=A\B;
Y=solv/sum(solv);
if(sum(Y)-1)<exp(-8)
    disp(['W1=',num2str(Y(1)),';W2=',num2str(Y(2)),';W3=',num2str(Y(3)),';W4=',num2str(Y(4))]);
    fx='correct';
else
    fx='Calculation error';
end