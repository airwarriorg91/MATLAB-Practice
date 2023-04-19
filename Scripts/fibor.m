function f = fibor(n)
    phi = 1.6180339887;
    psi = -0.6180339887;
    if n==1
        f = [1];
    else
        nterm = (phi^n - psi^n)/sqrt(5);
        nterm = round(nterm,0);
        f = [fibor(n-1), nterm];
    end
end