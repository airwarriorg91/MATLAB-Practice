function fh = poly_fun(p)

    function polynomial = poly(x)
        if length(p)==1
            polynomial = p(1).*x;
        else
            nterm = p(end).*x.^(length(p)-1);
            p = p(1:end-1);
            polynomial = nterm + poly(x);
        end    
    end
    fh = @poly;
end