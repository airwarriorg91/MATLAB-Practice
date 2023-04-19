function f = palindrome(v)
    l = length(v);
    if l == 1 || l == 0
        f = true;
    else
        if(v(1) == v(l))
            vnew = v(2:l-1);
            f = palindrome(vnew);
        else
            f = false;
        end
    end
end