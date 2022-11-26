function work09_4
T=100:100:1000;
CP1=[29.38 29.88 30.42 30.98 31.57 32.15 32.73 33.29 33.82 34.31];
CP2=[30.04 29.08 30.18 30.14 32.27 31.79 32.97 32.56 34.24 35.27];
CP3=[28.52 29.79 31.41 31.18 31.16 32.81 32.38 34.26 34.72 33.69];
poly1=polyfit(T,CP1,3);
poly2=polyfit(T,CP1,2);
Tcal=linspace(100,1000);
plot(T,CP1,'bo',Tcal,polyval(poly1,Tcal),'r:',Tcal,polyval(poly2,Tcal),'m-')
legend('experiment','poly^3','poly^2')
%----------------------



betaA=nlinfit(repmat(T,1,3),[CP1,CP2,CP3],@modelA,poly1);
betaB=nlinfit(repmat(T,1,3),[CP1,CP2,CP3],@modelB,poly2);
sumA=(modelA(betaA,T)-CP1).^2+(modelA(betaA,T)-CP2).^2+(modelA(betaA,T)-CP3).^2;
sumB=(modelB(betaB,T)-CP1).^2+(modelB(betaB,T)-CP2).^2+(modelB(betaB,T)-CP3).^2;
if sum(sumA)>=sum(sumB)
    fprintf('Cp=%.4f+%.4fT+%.4fT^2\n',betaB)
    plot(repmat(T,1,3),[CP1,CP2,CP3],'bo',Tcal,modelB(betaB,Tcal),'r-')
else
    fprintf('Cp=%.4f+%.4fT+%.4fT^2+%.4fT^3\n',betaA)
    plot(repmat(T,1,3),[CP1,CP2,CP3],'bo',Tcal,modelA(betaA,Tcal),'r-')
end



function y=modelA(beta,T)
    y=beta(1)+beta(2)*T+beta(3)*T.^2+beta(4)*T.^3;
end
function y=modelB(beta,T)
    y=beta(1)+beta(2)*T+beta(3)*T.^2;
end