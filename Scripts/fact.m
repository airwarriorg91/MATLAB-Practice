function f = fact(n)
%computes the factorial of a given number
if ~isscalar(n) || n ~= fix(n) || n <0
    error("Non-negative integer scalar input expected!")
end
if(n==0) %basecase
    f = 1;
else %recursive case
    f = n * fact(n-1);
end

