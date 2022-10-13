function[fx]=work04_4(x)
    if x<0||x>100
        fx='It''s not allowed';
    elseif x>=0&&x<1
        fx=x^2;
    elseif x>=1&&x<=10
        fx=2*x^1.2-1;
    else 
        fx=3*log(x);
    end
