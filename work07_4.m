function work07_4
equ=[1 -1];
X=roots(equ);
for i=1:length(X)
    if isreal(X(i))==1
        real(i)=X(i);
    end
end                         
if length(real)==1
    fprintf('The only real solution is x=%d\n',X);
else
    warning('There are more than one real solutions.They are:');
    disp(X)
    return
end

    