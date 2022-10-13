function[s]=work03_5(t)
hold on;
x=linspace(0,2);
y=exp(x);

s=exp(t);%取点
plot(x,y,'LineWidth',2);%y=e^x图像
plot([0,t],[s,s],'-.b','LineWidth',2);
plot([t,t],[0,s],'-.b','LineWidth',2);
text(0,s+0.25,['x=',num2str(t),',','y=',num2str(s)],'FontSize',12);



