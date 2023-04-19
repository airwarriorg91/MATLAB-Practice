function f = reversal(v)
    l = length(v);

    if l == 1 %basecase
        f = v;
    else
        v_new = v(1:l-1);
        f = [v(l), reversal(v_new)];
    end
end