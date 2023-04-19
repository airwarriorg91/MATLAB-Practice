function f = digit_sum(n)
    if n == 0  %basecase
         f = n;
    else %recursive case
        r = rem(n,10);
        n = floorDiv(n,10);
        f = r + digit_sum(n);
    end
end