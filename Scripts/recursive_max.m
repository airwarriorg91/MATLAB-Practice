function f = recursive_max(v)
    l = length(v);

    if  l == 1  %basecase
        f = v(1);
    else
        v_new = v(1:l-1);
        if (v(l) > recursive_max(v_new))
            f = v(l);
        else
            f = recursive_max(v_new);
        end

    end
end