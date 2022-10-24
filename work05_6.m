[max_bd,index]=max(ExpData(:,3)+ExpData(:,5));
ans1=ExpData(index,1)
plot(ExpData(:,1),ExpData(:,[3 5]))
hold on
plot(ans1,ExpData(index,3),'o',ans1,ExpData(index,5),'*')
abcd=sum(ExpData(:,2:5),2);

if size([abcd(abcd>45);abcd(abcd<55)])==[0 0]
    disp('The mass is balanced')
else 
    disp('The mass is not balanced')
end