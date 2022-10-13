point1=[0 0.0101];
point2=[0.00524 0.25];
k=20.7;
lineOperationY=@(x)(((point2(2)-point1(2))/(point2(1)-point1(1)))*(x-point1(1))+point1(2));
lineBalanceY=@(x)(k*x);
lineBalanceX=@(y)(y/k);
balanceY=point1(2);
operationX=point1(1);
operationY=point1(2);
count=0;
while(operationY<point2(2))&&(operationX<point2(1))
    balanceX=lineBalanceX(balanceY);
    operationX=balanceX;
    operationY=lineOperationY(operationX);
    balanceY=operationY;
    count=count+1;
end
disp(count)

