function out = edgy(in)
    b=1;
    M = ones(3,3,"uint8");
    for i=2:1:size(in,2)-1
        a = 1;
            for j=2:1:size(in,1)-1
                    A = double(in(j-1:j+1,i-1:i+1));
                    Ax = -A(1,1)+A(1,3)-2*A(2,1)+2*A(2,3)-A(3,1)+A(3,3);
                    Ay = A(1,1)+2*A(1,2)+A(1,3)-A(3,1)-2*A(3,2)-A(3,3);
                    M(a,b) = uint8(sqrt(Ax^2+Ay^2));
                    a = a+1;
            end
        b=b+1;
    end
    out = M;
end