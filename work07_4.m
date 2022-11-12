function work07_4
equ=[8820 0 0 -2.31 -0.6465];
X=roots(equ);
for i=1:length(X)
    if isreal(X(i))==0
        real(i)=X(i);
    end
end                         
if length(real)==1
    fprintf('The only real solution is x=%d\n',X(1));
else
    warning('There are more than one real solutions.They are:');
    disp(X)
    return
end

    