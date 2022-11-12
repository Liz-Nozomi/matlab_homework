function[A]=comp1(x)
y=subfunc(x);
A=y/x+sind(45)*x;
disp(['The calculated A is:',num2str(A)])
    function y=subfunc(x)
        if x>0
            y=nthroot(x,3);
        elseif x<0
            y=2/x;
        elseif x==0
            error('x cannot be zero')
        end
   
  