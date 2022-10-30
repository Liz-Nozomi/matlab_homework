function[fx]=work06_3(x)
w1=0.5778;w2=0.0792;w3=0.1123;w4=0.2307;
sum=w1*12+w2*1+w3*16+w4*14;
cons1=w1*12/sum;
cons2=w2*1/sum;
cons3=w3*16/sum;
cons4=w4*14/sum;
fprintf('质量分数为:W1=%.2f%%,W2=%.2f%%,W3=%2f%%,W4=%.2f%%',100*cons1,100*cons2,100*cons3,100*cons4);
n=cons1+cons2+cons3+cons4;
if n==1
    fx='Calculation succeed';
else
    fx='The calculation is wrong';
end