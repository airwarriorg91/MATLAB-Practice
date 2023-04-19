function f = fibo(n)
    
    if(n==1)
        f=[1];
    elseif(n==2)
        f=[1,1];
    else
        f = fibor(n-1);
        f = [f, f(end-1)+f(end)];
    end
end